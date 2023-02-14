const database = require('./database');

const getAllRecipe = () => {
  const result = database.query(``);
  return result;
}

module.exports = {
  getAllRecipe,
}