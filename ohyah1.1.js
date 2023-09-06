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
require('dotenv').config();
web.set('views',path.join(__dirname,'views'));
web.set('view engine', 'ejs');
const srvr = http.createServer(web);
try{
    let ts = Date.now();
    // let condevice = 0;
    let date_ob = new Date(ts);
    let date = date_ob.getDate();
    let month = date_ob.getMonth() + 1;
    let year = date_ob.getFullYear();
    let hours = date_ob.getHours();
    let minutes = date_ob.getMinutes();
    console.log(hours,minutes);
    const fdate = `day_${date}_${month}_${year}`;

    const mydbname = "kmmvschool";
    let x = 0;
    let timex = 4;
    web.use(express.static(path.join(__dirname,'public')))
    web.use('/public/images/', express.static('./public/images'));
    web.use('/public/css/', express.static('./public/css'));
    // connect mysql
    // const pass = prompt("enter a numer");
    const dani = mysql.createConnection({
        host : "192.168.57.3",
        user : "root",
        password : "Harald13880#",
        database : "kmmvschool"
    });
    

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
                // }
                    cheacksql = "SELECT teachername FROM kmmvschool.teachersrfid where teachersrfid = ?";
                    // update = `update ${fdate} set atamp = 1 where leasson <= ${timex} and atamp = 0 and subteacher = '${}' limit 1 ; `

                    dani.query(cheacksql ,rfidtag,(error,reasult)=>{
                        if(error){
                            throw error;
                            // return console.log(error);
                        }
                        // console.log(error)
                        if (!reasult.length == 0 ){ 
                            let  tename = reasult[0].teachername
                            upldate = `update ${fdate} set atamp = 1 where leasson <= ${timex} and atamp = 0 and subteacher = '${tename}' limit 1 ; `

                            // let  tename = reasult[0].teachername
                            // socket.write(reasult[0].teachername);
                            dani.query(upldate,(err,reasult)=>{
                                if(err){
                                    console.log(err)
                                }
                                socket.write(tename);
                            });
                            }   
                        });
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
    miyaserver.listen(5000);



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
    let a = 0;

    web.post('/uploding',(req,res,next)=>{
        console.log(req);

        const uploadxlfile = multer({storage:stor}).single('xlfile');
        //
        uploadxlfile(req,res,(err)=>{
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
            console.log(alhi); 
        // }); 
        // const insertQuery2 = `CREATE TABLE ${fdate} ('tname' VARCHAR(100) NOT NULL,'reason' VARCHAR(45) NOT NULL,'leasson' INT NOT NULL,'class' VARCHAR(45) NOT NULL,'subject' VARCHAR(45) NOT NULL,'concad' VARCHAR(45) NOT NULL,'subteacher' VARCHAR(100) NOT NULL,'atamp' INT NOT NULL DEFAULT 0,'relifno' INT NOT NULL AUTO_INCREMENT,PRIMARY KEY ('relifno'))`;
        const createTableQuery = `CREATE TABLE IF NOT EXISTS ${fdate} (tname VARCHAR(150) NOT NULL,reason VARCHAR(45) NOT NULL,leasson INT NOT NULL,class VARCHAR(170) NOT NULL,subject VARCHAR(160) NOT NULL,concad VARCHAR(45) NOT NULL,subteacher VARCHAR(150) NOT NULL,atamp INT NOT NULL DEFAULT 0,relifno INT NOT NULL AUTO_INCREMENT,PRIMARY KEY (relifno))`;


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
            // res.send(`<h1>${a}reacords insert sucess fully`);

            console.log('done');

        
        });
        // res.send(`<h1>${a}rea192.168.8.101cords insert sucess fully`);
        });
        res.status(200).send("<h1>dont reload </h1>");


    });

    web.get('/portal',(req,res,next) =>{
        // res.render('protal');
        const tablecheack =  `
        SELECT EXISTS (192.168.8.101
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
                return res.send("<h1>to day no relif not uploaded</h1>");
            }
            const getdata = `select relifno,tname,subteacher,leasson,class,subject,atamp from ${mydbname}.${fdate};`; 
            dani.query(getdata,(err,reasult)=>{
                if(err){
                    console.log(err);
                }
                console.log(reasult);
                var don = reasult;
                // return
                return res.render('protal',{
                    data:don
                });
            });
            // res.render('protal',don);
            
            
        })
        
    });

    web.use((req,res,next)=>{
        res.status(200).render('pgnot');
    });
    srvr.listen(3000);
}catch(error){
    console.log(error);
}
