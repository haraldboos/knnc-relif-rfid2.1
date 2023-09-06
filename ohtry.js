// // const mysql = require('mysql2/promise'); // Use the promise-compatible version of mysql2

// // // Create a connection pool
// // const pool = mysql.createPool({
// //     host: '192.168.57.3',
// //     user: 'root',
// //     password: 'Harald13880#',
// //     database: 'kmmvschool',
// //     waitForConnections: true,
// //     connectionLimit: 10,
// //     queueLimit: 0
// // });

// // // Example function that returns a Promise
// // function getUserById(id) {
// //   return new Promise(async (resolve, reject) => {
// //     try {
// //       const connection = await pool.getConnection();
// //       const [rows] = await connection.query('SELECT * FROM kmmvschool.day_18_8_2023;' );
// //       connection.release();
// //       resolve(rows[0]);
// //     } catch (error) {
// //       reject(error);
// //     }
// //   });
// // }
// // console.log('1');
// // // Usage of the getUserById function
// // getUserById(1)
// //   .then(user => {
// //     console.log('User:', user,3);

// //   })
// //   .catch(error => {
// //     console.error('Error:', error);
// //   });
  
// // console.log('2');
// const mysql = require('mysql2/promise');

// // Create a connection pool
// const pool = mysql.createPool({
//     host: '192.168.57.3',
//     user: 'root',
//     password: 'Harald13880#',
//     database: 'kmmvschool',
//     waitForConnections: true,
//     connectionLimit: 10,
//     queueLimit: 0
// });

// // Example function that returns a Promise
// async function getUserById() {
//     try {
//         const connection = await pool.getConnection();
//         const [rows] = await connection.query('select *  from `kmmvschool`.`datetime` where date = `day_18_8_2023`;');
//         console.log(5);
//         // connection.release();
//         return rows[0];
//     } catch (error) {
//         throw error;
//     }
// }

// console.log('1');

// // Usage of the getUserById function with async/await
// const asig = async () => {
//     try {
//         const user = await getUserById();
//         console.log(4);
//         console.log('User:', user, 3);
//     } catch (error) {
//         console.error('Error:', error);
//     }
// };
// asig();
// console.log('2');
const mysql = require('mysql2/promise');

// Create a connection pool
const pool = mysql.createPool({
    host: '192.168.57.3',
    user: 'root',
    password: 'Harald13880#',
    database: 'kmmvschool',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});
async function getlesson(time,[rows]){
    
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
// Example function that returns a Promise
async function getUserByDate(date) {
    try {
        const connection = await pool.getConnection();
        const [rows] = await connection.query('SELECT * FROM `kmmvschool`.`datetime` WHERE date = ?;', [date]);
        // connection.release();
        // let lessonno = await 
        const first = rows[0]['1st'];
        console.log(first);
        return rows;
    } catch (error) {
        throw error;
    }
}

console.log('1');

// Usage of the getUserByDate function with async/await
// (async () => {
//     try {
//         const date = 'day_18_8_2023'; // Set your desired date here
//         const users = await getUserByDate(date);
//         console.log('Users:', users['1st']);
//         console.log(users[0]['1st']);
//     } catch (error) {
//         console.error('Error:', error);
//     }
// })();
(async ()=>{
    try{
        const date = 'day_18_8_2023';
        const data = await getUserByDate(date);
        console.log(data);
        const time = '10:30:00';
        let lesson =await getlesson(time,[data]);
        console.log(lesson);
    } catch(err){
            console.log(err);

    }
})();


console.log('2');

