const reviewDAO = require('../models/reviewDAO');

const createReview = async (writer, recipe_id, rating, description) => {
  await reviewDAO.createReview(writer, recipe_id, rating, description);
}

const updateReview = async (writer, recipe_id, rating, description) => {
  await reviewDAO.updateReview(writer, recipe_id, rating, description);
}

const deleteReview = async (writer, recipe_id) => {
  await reviewDAO.deleteReview(writer, recipe_id);
}

const getAllReview = async () => {
  const result = await reviewDAO.getAllReview();
  return result;
}

module.exports = {
  createReview,
  updateReview,
  deleteReview,
  getAllReview,
}