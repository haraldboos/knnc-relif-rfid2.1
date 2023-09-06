process.env.TZ = 'Asia/Colombo';
const http = require('http');
const path = require('path');
const express = require('express');
const web = express();
const bdpas = require('body-parser');
const xl = require('xlsx');
const sket = require('net');
const multer = require('multer');
const { error, table } = require('console');
const mysql = require('mysql2');
const { Socket } = require('dgram');
const { connect } = require('http2');
const { AsyncLocalStorage } = require('async_hooks');
require('dotenv').config();
web.set('views',path.join(__dirname,'views'));
web.set('view engine', 'ejs');
const srvr = http.createServer(web);
web.use(express.urlencoded({ extended: true }));
// web.use(express.json());
// let ts = Date.now();
// // let condevice = 0;
// let date_ob = new Date(ts);
// let date = date_ob.getDate();
// let month = date_ob.getMonth() + 1;
// let year = date_ob.getFullYear();
// let hours = date_ob.getHours();
// let minutes = date_ob.getMinutes();
// console.log(hours,minutes);
// const fdate = `day_${date}_${month}_${year}`;

const mydbname = "kmmvschool";
let x = 0;
let timex = 4;
web.use(express.static(path.join(__dirname,'public')))
web.use('/public/images/', express.static('./public/images'));
web.use('/public/css/', express.static('./public/css'));
// connect mysql
// const pass = prompt("enter a numer");
// const dani = mysql.createConnection({
//     host : "192.168.57.3",
//     user : "root",
//     password : "Harald13880#",
//     database : "kmmvschool"
//   });
const dani = mysql.createPool({
    host: '192.168.8.102',
    user: 'root',
    password: 'Kncc2023#',
    database: 'kmmvschool',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});
  
function getingfdate(){
    let ts = Date.now();
    let date_ob = new Date(ts);
    let date = date_ob.getDate();
    let month = date_ob.getMonth() + 1;
    let year = date_ob.getFullYear();
    // let hours = date_ob.getHours();
    // let minutes = date_ob.getMinutes();
    // console.log(hours,minutes);
    return fte = `day_${date}_${month}_${year}`;

}
async function getitb(date){
    
    const gttb = 'SELECT * FROM `kmmvschool`.`datetime` WHERE date = ?';
        // const connection = await pool.getConnection();
    try{  
        const [rows] = await dani.promise().query(gttb, [date]);  // dani.query()
        // dani.promise().query(gttb, [date],(err,reasult)=>{
            // if(err){
            //     console.log(err);
            // }
            console.log(rows);
            // const first = rows[0]['1st'];
            // console.log(first);
            // console.log(rows)
            return rows;
        // });   
        // connection.release();
        // let lessonno = await 
       
    } catch (error) {
        throw error;
    }
}
async function getlesson(time,[rows]){
    // console.log(rows);
    if(time >= rows[0]['8th']){
        return les = 8;

    }else if(time >= rows[0]['7th']){
        return les = 7;

    }else if(time >= rows[0]['6th']){
        return les = 6;
    }else if(time >= rows[0]['5th']){
        return les = 5;
    }else if(time >= rows[0]['4th']){
        return les = 4;
    }else if(time >= rows[0]['3rd']){
        return les = 3;
    }else if(time >= rows[0]['2nd']){
        return les = 2;
    }else {
        return les = 1;
    }
    // return les;
}

function getime(){
    let ts = Date.now();
    let date_ob = new Date(ts);
    let hours = date_ob.getHours();
    let minutes = date_ob.getMinutes();
    // console.log(hours:minutes);
    let itime = `${hours}:${minutes}:00`;
    return itime;

}


const fdate = getingfdate();
console.log(fdate);
// const sesex = sket.createConnection(Socket => {
//     Socket.on('connection',Socket => {
//         x++;
//         console.log('client connected',Socket);
//         console.log(sket.SocketAddress);
//         Socket.write(fdate);
//         Socket.on('data',(data) =>{
//             console.log(data.toString());



//         });

//     });
// });
// sesex.listen(5000);

// define socketttttttttttttttttttt
// getlesson();
console.log(getime());
// if('2:24' >= '2:30'){
//     console.log('ohyah');
// }

const miyaserver = sket.createServer(socket =>{
    // try{
        x++;
        console.log('client connecteddddd',socket.remoteAddress,socket.remotePort,x);
        // socket.write(fdate);
        socket.on('data',data => {
            // while (true){
                rfidtag = data.toString();
                // console.log(data.toString());
                // socket.write(data.toString());
                console.log(rfidtag);
            // }
                const cheacksql = "SELECT teachername FROM kmmvschool.teachersrfid where teachersrfid = ?";
                // update = `update ${fdate} set atamp = 1 where leasson <= ${timex} and atamp = 0 and subteacher = '${}' limit 1 ; `
                
                dani.query(cheacksql ,[rfidtag], async (error,reasult)=>{
                        
                        if(error){
                            console.log(error);
                            throw error;
                            // return console.log(error);
                        }
                        
                        if (reasult.length > 0 ){
                        
                            let time = getime();
                            console.log(time);
                            const tbti = await getitb(fdate);
                            console.log(tbti);
                            // let t = '01:30:00';
                            let t = '09:00:01';

                            let gtles = await getlesson(t,[tbti]);

                            console.log(time);
                            console.log(gtles);
                                // console.log(gtles);
                                // let hours = date_ob.getHours();
                                // let minutes = date_ob.getMinutes();
                                // let time = `${hours}:${minutes}`;
                                
                                // });
                            let  tename = reasult[0].teachername;
                            console.log(tename);
                            upldate = `update ${fdate} set atamp = 1, atmtime = '${time}'  where (leasson = ${gtles} and atamp = 0 and subteacher = '${tename}') limit 1 ; `
    
                            // let  tename = reasult[0].teachername
                            // socket.write(reasult[0].teachername);
                            dani.query(upldate,(err,reasult)=>{
                                if(err){
                                        console.log(err);
                                        socket.write('serversite  error 550');
                                    }else{
                                        socket.write(`:${tename}:-:${time}`);

                                    }
                                // socket.write(`${tename}:-:${time}`);
                                });

                        
                        // .catch((err)=>{
                        //     console.log(err);
                        // })
                        // let findles = findlessono(gtles,time);
                        // console.log(gtles);
                        // // let hours = date_ob.getHours();
                        // // let minutes = date_ob.getMinutes();
                        // // let time = `${hours}:${minutes}`;
                        // let  tename = reasult[0].teachername;
                        // upldate = `update ${fdate} set atamp = 1, atmtime = '${time}'  where (leasson = ${gtles} and atamp = 0 and subteacher = '${tename}') limit 1 ; `

                        // // let  tename = reasult[0].teachername
                        // // socket.write(reasult[0].teachername);
                        // dani.query(upldate,(err,reasult)=>{
                        //     if(err){
                        //         console.log(err)
                        //     }
                        //     socket.write(`${tename}:-:${time}`);
                        // });
                        }else{
                                return socket.write('entering wrong card');
                            }
                    });
                // });
                // } catch (error){
                //         console.log(error);
                //     }
                    // })
                    
            // dani.query()

        });
        socket.on('end',() =>{
            x--;
            console.log('disconected');
        });
    // }catch (err){
    //     console.log(err);
    //     socket.end();
    // }

});
miyaserver.listen(5002);



web.use(bdpas.urlencoded({extended:true}));
web.get('/',(req,res,next) =>{
    console.log('webwork');
    res.status(200).render('mian');

});
web.get('/upd',(req,res,next)=>{
    res.status(200).render('up');
});

// web.post('/uploding',(req,res,next)=>{
// 
    const stor = multer.diskStorage({
    destination: (req,file,cb)=>{
        cb(null,'xluploads/');

    },
    filename:(req,file,cb)=>{
        cb(null,fdate+'_'+file.originalname);
    }
});

// function lessontimeupdate(path){
//     const leas1 =  path['lesson1'];
//     return console.log(leas1);

// }
// let a = 0;

web.post('/uploding',(req,res,next)=>{
    // console.log(req.file.path);
    // console.log(req.body);
    // const bod = req;
    // console.log(bod)
    const uploadxlfile = multer({storage:stor}).single('relifxlfile');
   
    //uplode fileeeeeeeeeeeeeee
    uploadxlfile(req,res,(err)=>{
        // const lesson = req.body;
        // const path = req.body;
        // lessontimeupdate(lesson);
        // console.log(m);
        function lessontimeupdate(req){
            const lesson = req.body;
            const l1 = lesson['lesson1'];
            const l2 = lesson['lesson2'];
            const l3 = lesson['lesson3'];
            const l4 = lesson['lesson4'];
            const l5 = lesson['lesson5'];
            const l6 = lesson['lesson6'];
            const l7 = lesson['lesson7'];
            const l8 = lesson['lesson8'];

            const lessonarray = [fdate,l1,l2,l3,l4,l5,l6,l7,l8];
            return lessonarray;
            // console.log(lesson);
            // const path = req.body;
            // console.log(lesson['lesson1']);
            // const leas1 =  ['lesson1'];
            // return ;
        
        }
        const lessonary = lessontimeupdate(req);
        console.log(lessonary);
        if(err){
            console.log(err);
        }
        const filepath = req.file.path;
        
        const workbook = xl.readFile(filepath);
        const wrksht = workbook.Sheets[workbook.SheetNames[0]];
        const data = xl.utils.decode_range(wrksht["!ref"]);
        // console.log(data);
        let alhi = [];
        for(let row = data.s.r; row <= data.e.r; row++){
            let hi = [];
            for(let col= data.s.c;col <= data.e.c; col++){
                let cell = wrksht[xl.utils.encode_cell({r:row, c:col})];
                if (cell && cell.v) {
                    hi.push(cell.v);
                  } else {
                    hi.push('no vlue add ');
                  }
            }
            alhi.push(hi);
        }
        console.log('alhi'); 
    // }); 
    // const insertQuery2 = `CREATE TABLE ${fdate} ('tname' VARCHAR(100) NOT NULL,'reason' VARCHAR(45) NOT NULL,'leasson' INT NOT NULL,'class' VARCHAR(45) NOT NULL,'subject' VARCHAR(45) NOT NULL,'concad' VARCHAR(45) NOT NULL,'subteacher' VARCHAR(100) NOT NULL,'atamp' INT NOT NULL DEFAULT 0,'relifno' INT NOT NULL AUTO_INCREMENT,PRIMARY KEY ('relifno'))`;
    const createTableQuery = `CREATE TABLE IF NOT EXISTS ${fdate} (tname VARCHAR(150) NOT NULL,reason VARCHAR(45) NOT NULL,leasson INT NOT NULL,class VARCHAR(170) NOT NULL,subject VARCHAR(160) NOT NULL,concad VARCHAR(45) NOT NULL,subteacher VARCHAR(150) NOT NULL,atamp INT NOT NULL DEFAULT 0,relifno INT NOT NULL AUTO_INCREMENT,PRIMARY KEY (relifno), atmtime VARCHAR(10))`;


    const insertQuery = `INSERT INTO ${fdate} (tname, reason, leasson, subject, class, concad, subteacher) VALUES (?, ?, ?, ?, ?, ?, ?)`;
    let a = 0;
    dani.query(createTableQuery,(error,reasult)=>{
        if(error){
            console.log(error);
            return;
        }
        
        alhi.forEach((row)=>{
            // const vals = [
            //     row[0],
            //     row[1],
            //     row[2],
            //     row[3],
            //     row[4],
            //     row[5],
            //     row[6]
            // ]
        // Execute the INSERT query with the dataArray
            dani.query(insertQuery, row,(err, result) => {
                if (err) {
                    // console.log(row[0],row[1],row[2],row[4])
                    a++;
                console.error('Error executing INSERT query:', err.message,a);
                return;
                }
                a++;
                console.log('Data inserted successfully!',a);
                
                // Close the database connection after all operations are done
                    // dani.end();
                return a;
            });
            // console.log('done1');
            // res.send(`<h1>${a}reacords insert sucess fully`);
        });
        const timeinset = 'INSERT INTO `kmmvschool`.`datetime` (`date`, `1st`, `2nd`, `3rd`, `4th`, `5th`, `6th`, `7th`, `8th`) VALUES (?,?,?,?,?,?,?,?,?)';
        dani.query(timeinset,lessonary,(er,reasult)=>{
            if(er){
                return console.log(er);

            }
            console.log('insertt sucess');


        })
        // res.send(`<h1>${a}reacords insert sucess fully`);
        
        console.log('done');

    
    });
        // const lesson = req.body;
        // console.log(lesson);
        // // const path = req.body;
        // console.log(lesson['lesson1']);
    // res.send(`<h1>${a}reacords insert sucess fully`);
    });
    res.status(200).send("<h1>dont reload </h1>");


});

web.get('/portal',(req,res,next) =>{
    // res.render('protal');
    const tablecheack =  `
    SELECT EXISTS (
        SELECT 1
        FROM information_schema.tables
        WHERE table_schema = ?
        AND table_name = ?
    ) AS table_exists;
`;
    dani.query(tablecheack,[mydbname,fdate],(err,reasult)=>{
        if (err){
            console.log(err);
        }
        const avalible = reasult[0].table_exists;
        // console.log(reasult[0].table_exists);
        if(avalible == 0){
            return res.send("<h1>to dqy relif not uploaded</h1>");
        }
        const getdata = `select * from ${mydbname}.${fdate};`; 
        dani.query(getdata,async (err,reasult)=>{
            if(err){
                console.log(err);
            }
            console.log('gotdata');
            var don = reasult;
            // let time = getime();
            // console.log(time);
            // const tbti = await getitb(fdate);
            // console.log(tbti);
            // // let t = time;
            // // let t = '13:10:00'
            // let gtles = await getlesson(time,[tbti]);

            // // return
            return res.render('protal',{
                data:don,
                // time:time,
                // lesson:gtles
            });
        });
        // res.render('protal',don);
        
        
    })
    
});
web.get('/addteacher',(req,res,next)=>{
    const trfidqry = 'SELECT * FROM kmmvschool.teachersrfid';
    dani.query(trfidqry,(er,ress)  => {
        if (er){
            console.log(er);
        }
        // return ress = ress;
        console.log(ress);
        res.status(200).render('addt',{
                data:ress
        });

    })
    // res.status(200);
    // res.status(200).render('addt');
});

web.use((req,res,next)=>{
    res.status(200).render('pgnot');
});
srvr.listen(3000);

