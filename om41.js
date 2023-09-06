const web = require('http');
const mysql = require('mysql');
const express = require('express');
const pundai = express();
const fuccc = require('net');
const ssx = require('body-parser');
const path = require('path');
const { error } = require('console');
const multer = require('multer');
const xlsx = require('xlsx');
require('dotenv').config();
let x = 0;
pundai.set('view engine', 'ejs');
const sex = web.createServer(pundai);
let ts = Date.now();

let date_ob = new Date(ts);
let date = date_ob.getDate();
let month = date_ob.getMonth() + 1;
let year = date_ob.getFullYear();
// mysql
const dani = mysql.createPool({
  host : process.env.DB_HOST,
  user : process.env.DB_USER,
  password :process.env.DB_PASS,
  database : process.env.DB_NAME
});

// dani.getConnection((error,conn)=>{
//   if(error) throw error
//   console.log("db is fuckeing")
// })

const server = fuccc.createServer(socket => {
  // dani.getConnection((error,conn)=>{
  //   if (error) throw error;
  //   console.log("db is fuckeing");
  // });
  
  socket.write("hello.");
  x++;
  const  clienip = socket.remoteAddress;
  let dfuck = {
    olll: 10,
    ip: '127.0.0.1'
  };

  socket.on('data', data => {
    console.log(clienip,' is sy ing ',data.toString());
    
    // socket.write(`data.toString()+'\r\n');
    socket.write('wite s this '+ data);
  });
  socket.on('end',()=> {
    console.log('disconnected');
    x--;
  });
});

server.listen(5000);
pundai.use(ssx.urlencoded({extended:true}));

pundai.get('/', (req,res,next) => {
  // res.send(`<h1>Connection count: ${x} and </h1>`);
  // res.send('<h1>hi testing about these</h1><form action ="/ohyah" method="POST" ><input type="text" name="oootha"/><input type="submit" name="submit" value="submit"/></form>');
  console.log('fuck u ' + x );
  res.send('<form action="/up" method="post" enctype="multipart/form-data"><input type="file" name="excelFile" ><input type="submit" value="Upload"></form>');
  next();
});
pundai.post('/ohyah',(req,res,next)=>{
  const data = req.body.oootha;
  console.log('from data:',data);
  
  res.send(`<b>is it ${data}`);
});
const strg = multer.diskStorage({
  destination:function(req,file,cb){
    console.log(cb,file);
    cb(null, 'uploads/');
  
  },
  filename:function(req,file,cb){
    cb(null, year + "-" + month + "-" + date + "_" +file.originalname)
  }
});
const upload = multer({storage:strg}).single('excelFile');

pundai.use('/up',(req,res,next)=>{
  // res.send('<form action="/up" method="post" enctype="multipart/form-data"><input type="file" name="excelFile" accept=".xlsx"><input type="submit" value="Upload"></form>');
  upload(req,res,function(err){
    if(err){
    console.log(err);
    }
    const fpath = req.file.path;
    const workbk = xlsx.readFile(fpath);
    // console.log(fpath);
    const wsheet = workbk.Sheets[workbk.SheetNames[0]];
    // console.log(wsheet);
    const data = xlsx.utils.decode_range(wsheet["!ref"]);
    // const data = xlsx.utils.sheet_add_json(wsheet);

    // console.log(data);
    // console.log(data.s.r)
    let alhi =[];
        for(let row = data.s.r;row <= data.e.r;row++){
          let hi = [];
            for(let col = data.s.c;col<=data.e.c;col++){
                // if (col == undefined){
                //   col='nothing is defined';
                // }      
                let cell = wsheet[xlsx.utils.encode_cell({r:row, c:col})]
                // console.log(cell);
                // if(cell == undefined){
                //   cell.v = 'not define';
                // }
                if (cell && cell.v) {
                  hi.push(cell.v);
                } else {
                  hi.push('no vlue add ');
                }
                // hi.push(cell.v);
            // }
            // console.log(hi);
          }
          alhi.push(hi);
        
      
        console.log(alhi)
    // Construct the INSERT query
    const insertQuery = 'INSERT INTO nowdate (tname, reason, leasson, class, subject, concad, subteacher) VALUES ?';

    // Execute the INSERT query with the dataArray
    dani.query(insertQuery, [alhi], (err, result) => {
        if (err) {
          console.error('Error executing INSERT query:', err.message);
          return;
        }
        console.log('Data inserted successfully!');
        
        // Close the database connection after all operations are done
        dani.end();
      });
    // const query = `INSERT INTO nowdate (teacher-name, reason, leasson, class, subject, concad, subteacher) values ${alhi.map((alhi) => `(${alhi.map((val)=> dani.escape(val)).join(", ")})`).join(", ")}`;
    // dani.query(query,(err,reasult,fields) => {
    //   if(err){
    //     return console.error(err.massage)

    //   }
    //   console.log('u id:'+ reasult.insertId)
    // })
    // dani.query(query, [alhi], (err,reasult)=>{
  }//   if (err) {
    //     console.log("Error inserting kjjakkdata into the database:", err);
    //     // res.send("Error inserting data into the database");
    //   } else {
    //     console.log("Data inserted successfully!");
    //     // res.send("Data inserted successfully!");
    //   }
    // });
    // console.log(alhi);
    res.send(`<h1>up done ${alhi}</h1>`)
    next();
  });

});
// pundai.get('/miya',(req,res)=>{
  // const dfuck ={
  //   olll: 10,
  //   ip: '127.0.0.1'
  // });
//   res.render(path.join(__dirname,'page','omm'),{
//     olll: 10,
//     ip: '127.0.0.1'
//   });
// });
pundai.use('/db',(req,res,next)=>{
  dani.getConnection((error,conn)=>{
    if (error) throw error;
    console.log("db is fuckeing");
  // })
    conn.query("select * from oma",(e,olandi)=>{
    if(!e){
        console.log('podappppp');
        console.log(olandi);
        var fk = olandi;
        res.render(path.join(__dirname,'page','omm'),{
          fk : fk


        });

      }else{
        console.log('fk errorr'+ e)
      }  
  })

  // res.sendFile('page/notfound.html')
  // res.render(path.join(__dirname,'page','omm'),{
  //   olll: x,
  //   ip: '127.0.0.1'
  // });
  //  next();
});

})



sex.listen(3000);