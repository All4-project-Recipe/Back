const kakaoLoginService = require('../services/kakaoLoginService.js');

const signInKaKao = async(req, res) => {
    //const headers = req.headers['authorization'];
    //const kakaoToken = headers.split(" ")[1];
    const kakaoToken = "FeqRJDjx7P8QaHPVopfbJO5Rc8NSm5Rg2uBsuvjKCinJYAAAAYZKAYwA";

    const accessToken = await kakaoLoginService.signInKaKao(kakaoToken);

    return res.status(200).json({ accessToken : accessToken });
}


module.exports = {
    signInKaKao,
}
