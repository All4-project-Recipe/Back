const userService = require('../services/userService');
const { checkDataIsNotEmpty } = require('../utils/myutils');

const signIn = async (req, res) => {
  const { user_Id, password, name, email } = req.body;
  checkDataIsNotEmpty({ user_Id, password, name, email });
  await userService.signIn(user_Id, password, name, email);
  res.status(201).body({message : "회원가입 완료"});
}

const login = async (req, res) => {
  const { user_Id, password } = req.body;
  checkDataIsNotEmpty({ user_Id, password });
  const result =  await userService.login(user_Id, password);
  res.json({ message: 'loginSuccess', token: result });
}

module.exports = {
  signIn,
  login,
}