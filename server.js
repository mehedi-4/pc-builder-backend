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


const tables = {
    cpu: "cpulist",
    mobo: "mobolist",
    ram: "ramlist",
    ssd: "ssdlist",
    gpu: "gpulist",
    psu: "psulist",
    case: "caselist"
};

app.get('/api/:component', (req, res) => {
    const component = req.params.component;

    if (!tables[component]) {
        return res.status(400).json({ error: "Invalid component type" });
    }

    const table = tables[component];
    db.query(`SELECT * FROM ${table}`, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
});


app.listen(3000);