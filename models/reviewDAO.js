const database = require('./database');

const createReview = async (writer, recipe_id, rating, description) => {
  await database.query(`
    INSERT INTO
      review (writer, recipe_id, rating, description)
    VALUES
      (?, ?, ?, ?)
  `, [writer, recipe_id, rating, description]);
}

const updateReview = async (writer, recipe_id, rating, description) => {
  await database.query(`
    UPDATE review SET
      rating = ?, description = (?)
    WHERE
      writer = ? AND recipe_id = ?
  `, [rating, description, writer, recipe_id]);
}

const deleteReview = async (writer, recipe_id) => {
  await database.query(`
    DELETE FROM
      review
    WHERE
      writer = ? AND recipe_id = ?
  `, [writer, recipe_id]);
}

const getAllReview = async () => {
  const result = await database.query(`
    SELECT
      *
    FROM
      review
  `);
  return result;
}

module.exports = {
  createReview,
  updateReview,
  deleteReview,
  getAllReview,
}