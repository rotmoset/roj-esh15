var express = require('express');

var net = require('net');

var sqlite3 = require('sqlite3').verbose();

var db = new sqlite3.Database('roj.db');

var webappDir = "../webapp";

var app = express();

app.use(express.static(__dirname + '/' + webappDir));


function apiPath(endpoint) {
    return "/api/" + endpoint;
}

app.get(apiPath("all"), function (req, res) {
    console.log("test!");
    
    
    var result = [];
    
    db.each("SELECT * FROM STATION;",function(err,row) {
        
        var station = {
            id: row.ID,
            name: row.NAME,
            gps_x: row.GPSX,
            gps_y: row.GPSY 
            
        };
        
        result.push(station);
    }, function() {
        res.json(result);   
    });
    
});

app.post(apiPath("up"), function(req, res) {
    count += 1;
    res.json("OK");
});


app.listen(3000, function () {
  console.log('Server listening on', 3000)
});
