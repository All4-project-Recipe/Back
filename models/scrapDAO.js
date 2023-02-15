const database = require('./database');

const test = async (user_id, recipe_id) => {
  await database.query(`
  INSERT INTO SCRAP (user_id, recipe_id) VALUES(?, ?)
  `, [user_id, recipe_id] );
}

const existScrap = async (user_id, recipe_id) => {
  const result = await database.query(`
  SELECT * FROM SCRAP WHERE user_id = ? AND recipe_id = ?
  `, [user_id, recipe_id]);
  return result;
}


const deleteScrap = async (user_id, recipe_id) => {
    await database.query(`DELETE FROM scrap WHERE user_id = ? AND recipe_id = ?`, [user_id, recipe_id]);
}

module.exports = {
  test,
  deleteScrap,
  existScrap
}