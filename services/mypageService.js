const mypageDAO = require('../models/mypageDAO');

const mypageComment = async (writer) => {
  const result = await mypageDAO.mypageComment(writer);
  return result;
}

const mypageRecipe = async (writer) => {
  const result = await mypageDAO.mypageRecipe(writer);

  return result;
}

const mypageScrap = async (writer) => {
  const result = await mypageDAO.mypageScrap(writer);

  return result;
}

module.exports = {
  mypageComment,
  mypageRecipe,
  mypageScrap
}