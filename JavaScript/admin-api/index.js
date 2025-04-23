const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Dummy data
let properties = [
  { id: 1, address: "Town Plaza", price: "$100,000", bedrooms: 2, bathrooms: 1, type: "Apartment", status: "Available" },
  { id: 2, address: "Green Avenue", price: "$250,000", bedrooms: 4, bathrooms: 2, type: "Villa", status: "Sold" }
];

// Routes
app.get('/properties', (req, res) => {
  res.json(properties);
});

app.post('/properties', (req, res) => {
  const newProperty = req.body;
  newProperty.id = properties.length + 1;
  properties.push(newProperty);
  res.status(201).json(newProperty);
});

app.listen(5000, () => {
  console.log('Server running on http://localhost:5000');
});
