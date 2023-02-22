const database = require('./database');

const mypageComment = async (writer) => {
  const result = await database.query(`
    select * from comment where writer = ?
  `, [writer]);

  return result;
}

const mypageRecipe = async (writer) => {
  const result = await database.query(`
    select * from recipe where writer = ?
  `, [writer]);

  return result;
}

const mypageScrap = async (writer) => {
  const result = await database.query(`
    select img_url, title, writer from recipe where writer = ?
  `, [writer]);

  return result;
}

module.exports = {
  mypageComment,
  mypageRecipe,
  mypageScrap
}