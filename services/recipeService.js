const recipeDAO = require('../models/recipeDAO');

const getAllRecipe = async () => {
  const result = await recipeDAO.getAllRecipe();

  return result;
}

const getRecipeById = async (id) => {
  const result = await recipeDAO.getRecipeById(id);
  return result;
}

const createRecipe = async (writer, title, description, amount, spend_time, level, thumbnail, ingredients, step) => {
  await recipeDAO.createRecipe(writer, title, description, amount, spend_time, level, thumbnail, ingredients, step);
}

module.exports = {
  getAllRecipe,
  getRecipeById,
  createRecipe,
}