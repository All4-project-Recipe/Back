const kakaoLoginService = require('../services/kakaoLoginService.js');

const signInKaKao = async(req, res) => {
    const headers = req.headers['authorization'];
    const kakaoToken = headers.split(' ')[1];

    const accessToken = await kakaoLoginService.signInKaKao(kakaoToken);

    return res.status(200).json({ accessToken : accessToken });
}


module.exports = {
    signInKaKao,
}
