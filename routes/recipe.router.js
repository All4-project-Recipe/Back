const express = require('express');

const {
  getAllRecipe,
} = require('../controllers/recipeController');

const router = express.Router();

router.get("", getAllRecipe);

module.exports = router;