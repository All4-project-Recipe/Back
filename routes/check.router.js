const express = require('express');
const { asyncWrap } = require('../utils/myutils');
const {
  checkRecipe  
} = require('../controllers/checkController.js');
const router  = express.Router();

router.post('/rank', asyncWrap(checkRecipe));

module.exports = router;