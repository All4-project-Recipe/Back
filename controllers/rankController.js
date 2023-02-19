const rankService = require('../services/rankService');

const rankRecipe = async (req, res) => {
  const { order } = req.query;
  const result = await rankService.rankRecipe(order);
  res.json({message : result});
}

module.exports = {
  rankRecipe
}