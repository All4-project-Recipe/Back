const commentService = require('../services/commentService');
const { checkDataIsNotEmpty } = require('../utils/myutils');

const createComment = async (req, res) => {
  const { writer, recipe_id, description } = req.body;
  checkDataIsNotEmpty({ writer, recipe_id, description });
  await commentService.createComment(writer, recipe_id, description);
  res.status(201).json({message : "CREATE_COMMENT"});
}

const updateComment = async (req, res) => {
  const { writer, recipe_id, description} = req.body;
  checkDataIsNotEmpty({ writer, recipe_id, description });
  await commentService.updateComment(writer, recipe_id, description);
  res.status(201).json({message : "UPDATE_COMMENT"});
}

const deleteComment = async (req, res) => {
  const { writer, recipe_id } = req.body;
  checkDataIsNotEmpty({ writer, recipe_id });
  await commentService.deleteComment(writer, recipe_id);
  res.status(201).json({message : "DELETE_COMMENT"});
}

const getAllComment = async (req, res) => {
  const result = await commentService.getAllComment();
  res.status(200).json({data : result});
} 

module.exports = {
  createComment,
  updateComment,
  deleteComment,
  getAllComment,
}