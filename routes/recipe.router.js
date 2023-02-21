const express = require('express');
const { asyncWrap } = require('../utils/myutils');
const fileManager = require('../middlewares/fileManager');
const {
  getAllRecipe,
  getRecipeById,
  createRecipe,
} = require('../controllers/recipeController');

const router = express.Router();

router.get("", asyncWrap(getAllRecipe));
router.get("/:id", asyncWrap(getRecipeById));
router.post("", asyncWrap(fileManager.upload.single('thumbnail')), asyncWrap(createRecipe));

module.exports = router;
