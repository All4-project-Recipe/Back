const mypageService = require('../services/mypageService');

const mypageComment = async (req, res) => {
  const { writer } = req.body;
  const result = await mypageService.mypageComment(writer);
  res.status(200).json({message : result});
}

const mypageRecipe = async (req, res) => {
  const { writer } = req.body;
  const result = await mypageService.mypageRecipe(writer);
  res.status(200).json({message : result});
}

const mypageScrap = async (req, res) => {
  const { writer } = req.body;
  const result = await mypageService.mypageScrap(writer);
  res.status(200).json({message : result});
}

module.exports = {
  mypageComment,
  mypageRecipe,
  mypageScrap
}