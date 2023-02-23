const recipeDAO = require('../models/recipeDAO');

const getAllRecipe = async () => {
  const result = await recipeDAO.getAllRecipe();

  return result;
}

const getRecipeById = async (id) => {
  const result = await recipeDAO.getRecipeById(id);
  return result;
}

const createRecipe = async (token, title, description, amount, spend_time, level, thumbnail, ingredients, step) => {
  
  const user = jwt.verify(token, process.env.SECRET_KEY);
  console.log(user);

  await recipeDAO.createRecipe(writer, title, description, amount, spend_time, level, thumbnail, ingredients, step);
}

module.exports = {
  getAllRecipe,
  getRecipeById,
  createRecipe,
}