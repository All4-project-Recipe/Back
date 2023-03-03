const scrapService = require('../services/scrapService');

// const getAllRecipe = (req, res) => {
//   const result = recipeService.getAllRecipe();
//   res.status(200).json({ message: result });
// }

const test = async (req, res) => {
    const { user_id, recipe_id } = req.body;
    await scrapService.test(user_id, recipe_id);
    res.json({message : "DONE"})
}

const deleteScrap = async(req, res) => {
    const {user_id, recipe_id} = req.body;
    await scrapService.deleteScrap(user_id, recipe_id);
    res.json({message : "DELETE"})
}

module.exports = {
  test,
  deleteScrap
}
