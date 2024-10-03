const express = require('express');
const cors = require('cors');
const servicesRouter = require('./routes/services.router');

const app = express();

const {
    resourceNotFound,
    handleError
} = require('./controllers/errors.controller');

app.use(cors());
app.use(express.json());

app.get('/', (req, res) => {
    res.json({ message: 'Welcome to our page.' });
});

app.use('/api/services', servicesRouter);

// Handle 404 response 
app.use(resourceNotFound);
// Define error-handling middleware last 
app.use(handleError);

module.exports = app;