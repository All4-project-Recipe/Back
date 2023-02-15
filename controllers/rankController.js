const rankService = require('../services/rankService');

const rankRecipe = async (req, res) => {

  const result = await rankService.rankRecipe();
  res.json({message : result});
  
}

module.exports = {
  rankRecipe
}