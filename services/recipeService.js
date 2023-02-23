const recipeDAO = require('../models/recipeDAO');
const jwt = require('jsonwebtoken');

const getAllRecipe = async () => {
  const result = await recipeDAO.getAllRecipe();

  return result;
}

const getRecipeById = async (id) => {
  const result = await recipeDAO.getRecipeById(id);
  return result;
}

const createRecipe = async (token, title, description, amount, spend_time, level, thumbnail, ingredients, step) => {
  if(!token) {
    throw {
      message : "로그인 후 가능합니다.",
      status : 400,
    }
  }
  const writer = jwt.verify(token, process.env.SECRET_KEY);

  await recipeDAO.createRecipe(writer.id, title, description, amount, spend_time, level, thumbnail, ingredients, step);
}

module.exports = {
  getAllRecipe,
  getRecipeById,
  createRecipe,
}