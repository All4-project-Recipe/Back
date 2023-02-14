const commentDAO = require('../models/commentDAO');

const createComment = async (writer, recipe_id, description) => {
  await commentDAO.createComment(writer, recipe_id, description);
}

module.exports = {
  createComment,
}