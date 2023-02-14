const recipeDAO = require('../models/recipeDAO');

const getAllRecipe = () => {
  const result = recipeDAO.getAllRecipe();
  return result;
}

module.exports = {
  getAllRecipe,
}