const commentDAO = require('../models/commentDAO');

const createComment = async (writer, recipe_id, description) => {
  await commentDAO.createComment(writer, recipe_id, description);
}

const updateComment = async (writer, recipe_id, description) => {
  await commentDAO.updateComment(writer, recipe_id, description);
}

const deleteComment = async (writer, recipe_id) => {
  await commentDAO.deleteComment(writer, recipe_id);
}

const getAllComment = async () => {
  const result = await commentDAO.getAllComment();
  return result;
}

module.exports = {
  createComment,
  updateComment,
  deleteComment,
  getAllComment,
}