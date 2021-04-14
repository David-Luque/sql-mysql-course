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
//const data = [];
//do {
//	data.push([faker.internet.email(), faker.date.past()]);
//} while (data.length < 500);

//const q = 'INSERT INTO users (email, created_at) VALUES ?';

//connection.query(q, [data], function(err, results){
//	if(err) throw err;
//	console.log(results);
//});

//EXERCISE 1
//const q = 'SELECT email, DATE_FORMAT(created_at, \'%b %D %Y\') AS earliest_date FROM users ORDER BY created_at ASC LIMIT 1';
// -- BETTER SOLUTION: SELECT DATE_FORMAT( MIN(created_at, \'%b %D %Y\') ) FROM users;

//EXERCISE 2
//const q = 'SELECT email, created_at FROM users WHERE created_at = (SELECT MIN(created_at) FROM users)';

//EXERCISE 3
//const q = 'SELECT MONTHNAME(created_at) AS month, COUNT(*) AS count FROM users GROUP BY month ORDER BY count DESC';
 
//EXERCISE 4
//const q = 'SELECT COUNT(*) AS yahoo_users FROM users WHERE email LIKE \'%yahoo%\''
// BETTER SOLUTION: 'SELECT COUNT(*) AS yahoo_users FROM users WHERE email LIKE \'%@yahoo.com\''

//EXERCISE 5
const q = `
SELECT
	CASE
		WHEN email LIKE \'%yahoo.com\' THEN \'yahoo\'
		WHEN email LIKE \'%gmail.com\' THEN \'google\'
		WHEN email LIKE \'%hotmail.com\' THEN \'hotmail\'
		ELSE \'other\'
	END as provider,
	COUNT(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC`




connection.query(q, (err, results)=>{
	if(err) throw err;
	console.log(results);
});



connection.end;


















