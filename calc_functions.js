const mysql = require('mysql');

const connnection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'mima',
    database:'historydata'
});

connnection.connect((err) = >{
    if(err) throw err;
    console.log('Connectde!');
    connnection.query('CALCULATOR',(err,rows)) = >{
        if(err) throw err;
        console.log('dataSearch from MySQL:');
        console.log(rows);
    }
})