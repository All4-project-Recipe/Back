const express = require('express');

const {
  getAllRecipe,
} = require('../controllers/recipeController');

const router = express.Router();

router.post("/", getAllRecipe);

module.exports = router;