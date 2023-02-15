const scrapDAO = require('../models/scrapDAO');

const test = async (user_id, recipe_id) => {

  const result = await scrapDAO.existScrap(user_id, recipe_id);
  

  if(result.length !== 0) {
    throw {
      message: '중복 스크랩 불가',
      status: 400,
    };
  }
  

  // 최종 스크랩
  await scrapDAO.test(user_id, recipe_id);
}

const deleteScrap = async(user_id, recipe_id) => {
    await scrapDAO.deleteScrap(user_id, recipe_id);
}

module.exports = {
  test,
  deleteScrap
}