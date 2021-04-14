const express = require('express');
const app = express();
const mysql = require('mysql');
const ejs = require('ejs');
const bodyParser = require('body-parser');

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: true}))

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'join_us' 
});



app.get('/', (req, res)=>{
	const q = 'SELECT COUNT(*) AS count FROM users';
	connection.query(q, function(err, result){
		if(err) {throw err};
		
		const total_count = result[0].count;
		const message = `We have ${total_count} users in DB`
		res.render('home', {data: total_count});
	});
});

app.post('/register', function (req, res){
	//console.log(req.body.email)
	const person = { email: req.body.email }
	
	connection.query('INSERT INTO users SET ?', person, function(err, result){
		if(err) throw err;
		res.redirect("/");
	}); 
});

app.get('/joke', (req, res)=>{
	const joke = 'What do you call a dog that does magic tricks? A labracadabrador.'
	res.send(joke);
});

app.get('random_number', (req, res)=>{
	const random_number = Math.floor( (Math.random() * 10) ) + 1;
	res.send('Number: ' + random_number);
});


app.listen(3000, ()=>{
	console.log('Server running on port 3000');
});