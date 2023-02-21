const userService = require('../services/userService');
const { checkDataIsNotEmpty } = require('../utils/myutils');

const signUp = async (req, res) => {
  const { user_Id, password, name, email } = req.body;
  checkDataIsNotEmpty({ user_Id, password, name, email });
  await userService.signUp(user_Id, password, name, email);
  res.status(201).json({message : "회원가입 완료"});
}

const login = async (req, res) => {
  const { user_Id, password } = req.body;
  checkDataIsNotEmpty({ user_Id, password });
  const result =  await userService.login(user_Id, password);
  res.json({ message: 'loginSuccess', token: result });
}

module.exports = {
  signUp,
  login,
}