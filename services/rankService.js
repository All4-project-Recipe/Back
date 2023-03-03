const rankDAO = require('../models/rankDAO');

const rankRecipe = async (order) => {
  let test;  
  if (order === "hit") {
    test = `hit desc`;
  } else {
    test = `avgrating desc`;
  }
  const result = await rankDAO.rateRanking(test);
  return result;
}

module.exports = {
  rankRecipe
}