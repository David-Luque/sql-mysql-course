const faker = require('faker');
const mysql = require('mysql');

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'join_us'
});

//connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
//	if (error) throw error;
//	console.log('The solution is: ', results[0].solution);
//});

//const q = 'SELECT CURDATE() AS date, CURTIME() AS time, NOW() AS now';
//connection.query(q, function(error, results, fields){
//	if(error) throw error;
//	console.log(results[0].date)
//	console.log(results[0].time)
//	console.log(results[0].now);
//});


//SELECTING DATA
//const q = 'SELECT * FROM users';
//const q = 'SELECT COUNT(*) AS total_users FROM users';
//connection.query(q, function(error, results, fields){
//	if(error) throw error;
//	console.log(results[0].total_users)
//});


//INSERTING DATA
//const person = {
//	email: faker.internet.email(),
//	created_at: faker.date.past()
//};
//const final_result = connection.query('INSERT INTO users SET ?', person, function(error, results){
//	if(error) throw error;
//	console.log(results)
//});
//
//console.log(person);
//console.log(final_result.sql);


//INSERTING LOTS OF DATA
const data = [];
do {
	data.push([faker.internet.email(), faker.date.past()]);
} while (data.length < 500);

const q = 'INSERT INTO users (email, created_at) VALUES ?';

connection.query(q, [data], function(err, results){
	if(err) throw err;
	console.log(results);
});







connection.end;

