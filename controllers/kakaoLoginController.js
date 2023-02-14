const kakaoLoginService = require('../services/kakaoLoginService.js');

const kakao = {
    clientID : process.env.KAKAO_REST_API_KEY,
    clientSecret : process.env.KAKAO_SECRET,
    redirectUri : process.env.KAKAO_REDICRECT_URI
  }


const signInKaKao = async (req, res) => {
    //const headers = req.headers['authorization'];
    //const kakaoToken = headers.split(" ")[1];

    const kakaoAuthURL =  `https://kauth.kakao.com/oauth/authorize?client_id=${kakao.clientID}&redirect_uri=${kakao.redirectUri}&response_type=code&scope=profile,account_email`;

    res.redirect(kakaoAuthURL);

    // const kakaoToken = "W6FajyYnGQ9bfs-g6IllyRjluKZEBRBmVl2CmmLaCj11nAAAAYZPVJTu";

    // const accessToken = await kakaoLoginService.signInKaKao(kakaoToken);

    // return res.status(200).json({ accessToken: accessToken });
}


module.exports = {
    signInKaKao,
}
