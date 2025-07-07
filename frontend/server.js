
const express = require('express');
const fetch = require('node-fetch');
const app = express();

app.get('/', async (req, res) => {
  try {
    const response = await fetch('http://localhost:5000/api/data');
    const data = await response.json();
    res.send(`<h1>Express Frontend</h1><p>Backend says: ${data.message}</p>`);
  } catch (err) {
    res.send(`<h1>Error connecting to backend</h1>`);
  }
});

app.listen(3000, () => console.log('Frontend running at http://localhost:3000'));
