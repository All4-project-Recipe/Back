const recipeDAO = require('../models/recipeDAO');

const getAllRecipe = async () => {
  console.log("2");
  const result = await recipeDAO.getAllRecipe();
  console.log("3");
  
  return result;
}

module.exports = {
  getAllRecipe,
}