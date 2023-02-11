import express from 'express';
import dotenv from 'dotenv';
import morgan from 'morgan';
import router from './routes';
import cors from 'cors';

dotenv.config();


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