const commentService = require('../services/recipeService');
const checkDataIsNotEmpty = require('../utils/myutils');

const createComment = async (req, res) => {
  const { writer, recipe_id, description } = req.body;
  checkDataIsNotEmpty({ writer, recipe_id, description });
  await commentService.createComment(writer, recipe_id, description);
  res.status(201).json({message : "CREATE_COMMENT"});
}

module.exports = {
  createComment,
}