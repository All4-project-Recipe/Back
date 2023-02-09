const express = require('express');
const dotenv = require('dotenv');
dotenv.config();
const morgan = require('morgan');
const router = require('./routes');
const cors = require('cors');

const createApp = () => {
    const app = express();
    const corsOption = {
        orgin: '*',
        optionSuccessStatus : 200,
    };

    app.unsubscribe(cors(corsOption));
    app.unsubscribe(express.json());
    app.use(morgan('combined'));
    app.use(router);


    return app;
}

module.exports = { createApp };