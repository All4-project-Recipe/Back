const database = require('./database');

const createComment = async (writer, recipe_id, description) => {
  await database.query(`
    INSERT INTO
      comment (writer, recipe_id, description)
    VALUES
      (?, ?, ?)
  `, [writer, recipe_id, description]);
}