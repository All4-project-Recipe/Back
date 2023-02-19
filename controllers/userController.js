const userService = require('../services/userService');
const { checkDataIsNotEmpty } = require('../utils/myutils');

const signIn = async (req, res) => {
  const { user_Id, password, name, email } = req.body;
  checkDataIsNotEmpty({ user_Id, password, name, email });
  await userService.signIn(user_Id, password, name, email);
}

module.exports = {
  signIn,
}