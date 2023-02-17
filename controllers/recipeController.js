const recipeService = require('../services/recipeService');
const { checkDataIsNotEmpty } = require('../utils/myutils');

const getAllRecipe = async (req, res) => {
  const result = await recipeService.getAllRecipe();
  res.status(200).json({ data: result });
}

const getRecipeById = async (req, res) => {
  const { id } = req.params;
  const result = await recipeService.getRecipeById(id);
  res.status(200).json({ data : result });
}

const createRecipe = async(req, res) => {
  const { ingredients}  = req.body;
  // checkDataIsNotEmpty({ writer, title, description });
  await recipeService.createRecipe(ingredients);
  res.status(200).json({ message : "DONE"});
}

module.exports = {
  getAllRecipe,
  getRecipeById,
  createRecipe,
}