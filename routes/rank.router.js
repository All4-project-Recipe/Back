const express = require('express');
const { asyncWrap } = require('../utils/myutils');
const {
  rankRecipe
} = require('../controllers/rankController.js');
const router = express.Router();

router.get('/rank', asyncWrap(rankRecipe));

module.exports = router;