const mysql = require('mysql2');
const express = require('express');
const cors = require('cors');
const fs = require('fs');
const path = require('path');

const app = express();
app.use(cors());
app.use(express.json());
const OLLAMA_URL = "http://127.0.0.1:11434/api/generate";
// Directory for images
const IMAGE_DIR = path.join(__dirname, 'public/images');
const IMAGE_EXTENSIONS = ['jpg', 'jpeg', 'png', 'webp'];

// Serve image by product ID
// Serve images by ID
app.get('/images/by-id/:productid', (req, res) => {
  const dir = path.join(__dirname, 'public/images');
  const { productid } = req.params;

  // Read all files in the directory
  const files = fs.readdirSync(dir);

  // Find file where the name matches productid (case-insensitive)
  const file = files.find(f => path.parse(f).name.toLowerCase() === productid.toLowerCase());

  if (file) {
    const filepath = path.join(dir, file);
    return res.sendFile(filepath);
  }

  console.log('Image not found for ID:', productid);
  res.status(404).send('Image not found');
});


// Serve all images statically
app.use('/images', express.static(IMAGE_DIR));

// MySQL connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'iammhe',
  database: 'pcbuilder'
});

db.connect(err => {
  if (err) {
    console.log("Error connecting to database:", err);
    return;
  }
  console.log("Database connected");
});

// Component tables
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
    if (err) return res.status(500).json({ error: err.message });

    const updatedResults = results.map(item => ({
      ...item,
      image: `http://localhost:3000/images/by-id/${item.id}`
    }));

    res.json(updatedResults);
  });
});

app.post("/home/search", (req, res) => {
  const search = req.body.search;

  const queries = Object.values(tables).map(table => {
    return new Promise((resolve, reject) => {
      db.query(`SELECT * FROM ${table} WHERE name LIKE ?`, [`%${search}%`], (err, results) => {
        if (err) return reject(err);

        const updatedResults = results.map(item => ({
          ...item,
          image: `http://localhost:3000/images/by-id/${item.id}`
        }));

        resolve(updatedResults);
      });
    });
  });

  Promise.all(queries)
    .then(resultsArray => res.json(resultsArray.flat()))
    .catch(err => {
      console.log(err);
      res.status(500).json({ error: "Database query failed" });
    });
});

app.post("/chat", async (req, res) => {
  const { prompt } = req.body;

  const wrapped_prompt =
    prompt + " Now write only the PC component names like CPU : cpu name GPU : gpu name ..., comma separated, no extra text.";

  try {
    const response = await fetch(OLLAMA_URL, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        model: "llama3.2:3b",
        prompt: wrapped_prompt,
        stream: false,
      }),
    });

    const data = await response.json();
    let componentsString = data.response || "";

    let components = componentsString
      .split(",")
      .map((c) => c.trim())
      .filter((c) => c.length > 0);

    console.log("Components from Ollama:", components); // debug

    res.json(components); // send array of names
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Response not found from the model" });
  }
});


// Start server
app.listen(3000, () => {
  console.log("Server running on http://localhost:3000");
});
