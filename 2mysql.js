const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: '192.168.57.3',
  user: 'root',
  password: 'Harald13880#',
  database: 'kmmvschool',
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
  } else {
    console.log('Connected to MySQL server.');
    // Your data insertion code goes here.
    connection.query('SELECT * FROM testing', (error, results, fields) => {
      if (error) {
        console.error(error);
      } else {
        console.log(results);
      }
    });
    
  }
});
