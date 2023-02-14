const reviewService = require('../services/reviewService');
const { checkDataIsNotEmpty } = require('../utils/myutils');

const createReview = async (req, res) => {
  const { writer, recipe_id, rating, description } = req.body;
  checkDataIsNotEmpty({ writer, recipe_id, rating, description });
  await reviewService.createReview(writer, recipe_id, rating, description);
  res.status(201).json({message : "CREATE_REVIEW"});
}

const updateReview = async (req, res) => {
  const { writer, recipe_id, rating, description } = req.body;
  checkDataIsNotEmpty({ writer, recipe_id, rating, description });
  await reviewService.updateReview(writer, recipe_id, rating, description);
  res.status(201).json({message : "UPDATE_REVIEW"});
}

const deleteReview = async (req, res) => {
  const { writer, recipe_id } = req.body;
  checkDataIsNotEmpty({ writer, recipe_id });
  await reviewService.deleteReview(writer, recipe_id);
  res.status(201).json({message : "DELETE_REVIEW"});
}

const getAllReview = async (req, res) => {
  const result = await reviewService.getAllReview();
  res.status(200).json({data : result});
}


module.exports = {
  createReview,
  updateReview,
  deleteReview,
  getAllReview,
}