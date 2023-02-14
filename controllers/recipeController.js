const recipeService = require('../services/recipeService');

const getAllRecipe = (req, res) => {
  const result = recipeService.getAllRecipe();
  res.status(200).json({ message: result });
}

module.exports = {
  getAllRecipe,
}