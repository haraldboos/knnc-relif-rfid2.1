const web = require('http');
const mysql = require('mysql');
const exps = require('express');
const express = exps();
const net = require('net');
const bdpas = require('body-parser');
const path = require('path');
const { error } = require('console');
const multer = require('multer');
const xlsx = require('xlsx');
const { Socket } = require('dgram');
const { brotliDecompress } = require('zlib');
require('dotenv').config();
// lets start coding

//x for find the count of device
let x= 0; 
express.set('view engine','ejs');
const site = web.createServer(express);

// define thedate
let ts = Date.now();

let date_ob = new Date(ts);
let date = date_ob.getDate();
let month = date_ob.getMonth() + 1;
let year = date_ob.getFullYear();

// mysql
const mycon = mysql.createPool({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password :process.env.DB_PASS,
    database : process.env.DB_NAME
});

// make a tcp socket
const  tcpskt = net.createServer(Socket => {
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
// above must want to edit
tcpskt.listen(5000);

// kela irruku rathu web serrverr
express.use(bdpas.urlencoded({extended:true}));

    express.use('/',(req,res,next) => {
    console.log('connection get');

    next();
});

// page for upulodae
// const upload = multer({storage:strg}).single('excelFile');
// express.get('/up',(req,res,next) =>{
//     upload(req,res,function(err){
//         if(err){
//             console.log(err);
//         }
//         const fpath = req.file.path;
//         const workbk = xlsx.readFile(fpath);
//         const wsheet = workbk.Sheet[workbk.SheetName[0]];
//         const data = xlsx.utils.decode_range(wsheet["!ref"]);

//         let alhi = [];
//         for(let row = data.s.r;row <= data.e.r;row++){
//             let hi =[];
//             for(let col = data.s.c;col<=data.e.c;col++){
//                 let cell =wsheet[xlsx.utils.encode_cell({r:row,c:col})]
//                 if (cell && cell.v){
//                     hi.push(cell.v);
//                 }else{
//                     hi.push(' nothiny ');
//                 }
//             }
//         }
//         alhi.push(hi);
//         console.log(alhi);
//     })
//     const insertQuery = 'INSERT INTO new_table (tname, reason, leasson, class, subject, concad, subteacher) VALUES ?';

//     // Execute the INSERT query with the dataArray
//     mycon.query(insertQuery, [alhi], (err, result) => {
//         if (err) {
//           console.error('Error executing INSERT query:', err.message);
//           return;
//         }
//         console.log('Data inserted successfully!');
        
//         // Close the database connection after all operations are done
//         mycon.end();
//       });
//  });
// ... Your other requires and configurations ...

// Define multer storage
const multerStorage = multer.diskStorage({
    destination: function (req, file, cb) {
      // Define the destination folder for uploaded files
      cb(null, 'uploads');
    },
    filename: function (req, file, cb) {
      // Define the filename for uploaded files
      cb(null, file.fieldname + '-' + Date.now());
    }
  });
  
  const upload = multer({ storage: multerStorage }).single('excelFile');
  
  // ... Your other configurations ...
  
  // Page for upload
  express.get('/up', (req, res) => {
    res.render('upload'); // Assuming you have an 'upload.ejs' file for rendering the upload page
  });
  
  // POST endpoint for handling file upload
  express.post('/up', (req, res) => {
    upload(req, res, function (err) {
      if (err) {
        console.log(err);
        return;
      }
      const fpath = req.file.path;
      const workbk = xlsx.readFile(fpath);
      const wsheet = workbk.Sheets[workbk.SheetNames[0]]; // Fix the variable name
  
      const data = xlsx.utils.decode_range(wsheet['!ref']);
  
      let alhi = [];
      for (let row = data.s.r; row <= data.e.r; row++) {
        let hi = [];
        for (let col = data.s.c; col <= data.e.c; col++) {
          let cell = wsheet[xlsx.utils.encode_cell({ r: row, c: col })];
          if (cell && cell.v) {
            hi.push(cell.v);
          } else {
            hi.push('nothing');
          }
        }
        alhi.push(hi);
      }
      console.log(alhi);
  
      const insertQuery =
        'INSERT INTO new_table (tname, reason, leasson, class, subject, concad, subteacher) VALUES ?';
  
      // Execute the INSERT query with the dataArray
      mycon.query(insertQuery, [alhi], (err, result) => {
        if (err) {
          console.error('Error executing INSERT query:', err.message);
          return;
        }
        console.log('Data inserted successfully!');
        // Note: Do not close the database connection here, as you may need it for other operations.
        // mycon.end();
      });
    });
  });
  