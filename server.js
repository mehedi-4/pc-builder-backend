const mysql = require('mysql2')
const express = require('express')
const cors = require('cors')

const app = express();
app.use(cors());
app.use(express.json());

const fs = require('fs');
const path = require('path');

app.get('/images/by-id/:productid', (req, res) => {
  const dir = path.join(__dirname, 'public/images');
  const { productid } = req.params;
  const extensions = ['jpg', 'jpeg', 'webp', 'png'];
  for (const ext of extensions) {
    const filename = `${productid}.${ext}`;
    const filepath = path.join(dir, filename);
    if (fs.existsSync(filepath)) {
      return res.sendFile(filepath);
    }
  }
  res.status(404).send('Image not found');
});

app.use('/images', express.static(__dirname + '/public/images'));


const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'iammhe',
    database: 'pcbuilder'
});

db.connect(err => {
    if(err){
        console.log("error connecting");
        return;
    }
    console.log("connected");
});

app.get('/api/cpu', (req,res) =>{
    db.query(`SELECT * FROM cpulist`, (err, results) => {
        if(err) {
            return res.status(500).json({error: err.message});
        }
        res.json(results);
    });
});


app.get('/api/mobo', (req,res) =>{
    db.query(`SELECT * FROM mobolist`, (err, results) => {
        if(err) {
            return res.status(500).json({error: err.message});
        }
        res.json(results);
    });
});

app.get('/api/ram', (req,res) =>{
    db.query(`SELECT * FROM ramlist`, (err, results) => {
        if(err) {
            return res.status(500).json({error: err.message});
        }
        res.json(results);
    });
});

app.get('/api/ssd', (req,res) =>{
    db.query(`SELECT * FROM ssdlist`, (err, results) => {
        if(err) {
            return res.status(500).json({error: err.message});
        }
        res.json(results);
    });
});

app.get('/api/gpu', (req,res) =>{
    db.query(`SELECT * FROM gpulist`, (err, results) => {
        if(err) {
            return res.status(500).json({error: err.message});
        }
        res.json(results);
    });
});

app.listen(3000);