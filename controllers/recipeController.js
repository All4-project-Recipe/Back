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
  const { writer, title, description, amount, spend_time, level, thumbnail, ingredients, step }  = req.body;
  checkDataIsNotEmpty({ writer, title, description });
  await recipeService.createRecipe(writer, title, description, amount, spend_time, level, thumbnail, ingredients, step);
  res.status(201).json({ message : "DONE"});
}

module.exports = {
  getAllRecipe,
  getRecipeById,
  createRecipe,
}