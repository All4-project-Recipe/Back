const recipeService = require('../services/recipeService');

const getAllRecipe = async (req, res) => {
  const result = await recipeService.getAllRecipe();
  res.status(200).json({ data: result });
}

const createRecipe = async(req, res) => {
  res.json({message : "test"});
}

module.exports = {
  getAllRecipe,
  createRecipe,
}