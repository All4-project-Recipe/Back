const rankDAO = require('../models/rankDAO');

const rankRecipe = async () => {
  const result = await rankDAO.rateRanking();
  return result;
}

module.exports = {
  rankRecipe
}