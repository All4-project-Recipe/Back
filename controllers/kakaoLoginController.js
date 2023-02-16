const kakaoLoginService = require('../services/kakaoLoginService.js');

const kakao = {
    clientID : process.env.KAKAO_REST_API_KEY,
    clientSecret : process.env.KAKAO_SECRET,
    redirectUri : process.env.KAKAO_REDICRECT_URI
  }


const signInKaKao = async (req, res) => {
    // const headers = req.headers['authorization'];
    // const kakaoToken = headers.split(" ")[1];


    const kakaoToken = "2pDx-WKZ451qM9Yk3Q3tT0mr4vCBmoHC0_uhNL7LCj11GwAAAYZVzJSK";

    const accessToken = await kakaoLoginService.signInKaKao(kakaoToken);

    return res.status(200).json({ accessToken: accessToken });
}


module.exports = {
    signInKaKao,
}
