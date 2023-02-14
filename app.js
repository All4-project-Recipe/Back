const express = require('express');
const dotenv = require('dotenv');
dotenv.config();
const morgan = require('morgan');
const router = require('./routes');
const { morganCustomFormat } = require('./utils/myutils');
const cors = require('cors');

const createApp = () => {
  const app = express();
  const corsOption = {
    orgin: '*',
    optionSuccessStatus: 200,
  };

  app.use(cors(corsOption));
  app.use(express.json());
  app.use(morgan(morganCustomFormat));
  app.use(router);

  return app;
};

module.exports = {
  createApp,
}
