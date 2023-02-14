const database = require('./database');

const createComment = async (writer, recipe_id, description) => {
  await database.query(`
    INSERT INTO
      comment (writer, recipe_id, description)
    VALUES
      (?, ?, ?)
  `, [writer, recipe_id, description]);
}

const updateComment = async (writer, recipe_id, description) => {
  await database.query(`
    UPDATE comment
      SET description = (?)
    WHERE
      writer = (?) AND recipe_id = (?)
  `, [description, writer, recipe_id]);
}

const deleteComment = async (writer, recipe_id) => {
  await database.query(`
    DELETE FROM
      comment
    WHERE
      writer = (?) AND recipe_id = (?)
  `, [writer, recipe_id]);
}

const getAllComment = async () => {
  const result = await database.query(`
    SELECT
      *
    FROM
      comment
  `);
  return result;
}

module.exports = {
  createComment,
  updateComment,
  deleteComment,
  getAllComment,
}