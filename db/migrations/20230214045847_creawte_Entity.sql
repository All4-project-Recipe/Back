-- migrate:up
INSERT INTO user (name, email) VALUES 
-- 1번
("미루나무", "mell@naver.com"), 
-- 2번
("판교댁쏭아", "mell2@naver.com"),
-- 3번
("뽕림이", "mell3@naver.com"),
-- 4번
("뽀유TV", "mell4@naver.com"),
-- 5번
("베리츄", "mell5@naver.com"),
-- 6번
("뽕림이", "mell6@naver.com"),
-- 7번
("루던", "mell7@naver.com"),
-- 8번
("영주", "mell8@naver.com"),
-- 9번
("815요리사랑", "mell9@naver.com"),
-- 10번
("반이짝이", "mell10@naver.com"),
;

INSERT INTO recipe (title, writer, description, amount, spend_time, level) VALUES
-- 1번
("**이거 하나면 반찬 걱정 뚝! 매콤 부드러운 닭볶음탕 만드는법", 1, "누구나 좋아하는 닭볶음탕 만들어볼게요", "4인분", "60분 이내", "중급"),
-- 2번
("**고구마맛탕 만들기 에어프라이어로 간단하게**", 2, "아이들 간식으로 고구마 맛탕을 만들었다 늘 찌거나 구워 먹던 고구마를 오늘은 조금 더 달달하고 쫀득하게 만든 간식이라 아이들 참 좋아한다 늘 그렇듯 손 많이 가는 음식을 만들기에는 시간이 촉박해^^;; 고구마 맛탕을 초간단 편하게 만들어 주니 나름 신경 쓴 티는 나지만 사실 손 갈게 거의 없다.", "4인분", "20분 이내", "초급"),
-- 3번
("**백종원레시피로 만든 콩나물무침으로 밥 한 끼 뚝딱 ~", 3, "오늘은 오래간만에 고춧가루 넣은 콩나물무침을 만들어봤어요. 아삭아삭 식감에 칼칼한 맛이 매력적인 매콤 콩나물무침!", "2인분", "10분 이내", "아무나"),
-- 4번
("**너무 간단한데 맛있어서 놀라는 백종원 분식점 떡볶이 황금 레시피", 4, "분식점에서 파는 맛 나는 백주부님 떡볶이!만드는 방법은 너무 간단한데 맛있어서 놀랜답니다!", "2인분", "15분 이내", "아무나"),
-- 5번
("**소세지야채볶음 황금레시피, 쏘야 맛있게만들기", 5, "우리집 단골 메뉴 소세지야채볶음! 일명 '쏘야'라고도 불리우죠. 쏘야는 아이들 반찬으로도 어른들 술안주로도 먹기 정말 좋아요!", "4인분", "30분 이내", "초급"),
-- 6번
("**에어프라이어로 군고구마 굽는 법", 6, "에어프라이어로 군고구마를 만들어보았어요.", "2인분", "60분 이내", "아무나"),
-- 7번
("**버섯으로 관자 느낌 내는 방법! 새송이버섯간장버터구이 만들기", 7, "지금까지 이런 버섯은 없었다. 이것은 관자인가 버섯인가", "1인분", "15분 이내", "아무나"),
-- 8번
("**[베이킹]버터바 만들기 / 버터바 레시피", 8, "버터바는 일명 쫀득바, 꾸덕바 라고 불리는데 저는 요걸 유명 베이커리에서 처음 먹고 반했죠!", "2인분", "60분 이내", "초급"),
-- 9번
("**호박잎요리/호박잎쌈밥", 9, "텃밭요리~호박잎과 우렁이 렌틸콩으로 갖은 양념해 짜글짜글 끓여 쌈장을 만들어 호박잎에 쌈장을 넣고 돌돌 말았어요 모양도 예쁘고 만들기도 쉬운 요리이지요", "6인분 이상", "60분 이내", "중급"),
-- 10번
("**하이볼 만드는법 위스키 하이볼 만들기", 10, "육퇴후 신랑과 가볍게 한잔하곤 하는데요. 가장 즐겨 마시는 게 맥주이지만 요즘은 위스키에 토닉워터 섞어 레몬 넣은 산뜻한 하이볼을 즐겨마시고 있어요. 엄청 예전에 일본 여행을 갔을 때 처음 맛보고는 완전 취향저격이더라고요. 그래서 여행 내내 즐겨마셨던 추억이 있어요.", "6인분 이상", "60분 이내", "중급")
;

INSERT INTO ingredients (recipe_id, name, amount) VALUES
-- 1번
(1, "닭", "1마리"), (1, "양파", "1개"), (1, "감자", "1개"), (1, "대파", "1개"), (1, "청양고추", "1개"), (1, "당근", "1개"), (1, "물", "1L"),
-- 2번
(2, "고구마", "3~4개"), (2, "조청", "4큰술"), (2, "올리브오일", "4큰술"), (2, "통깨", "약간"),
-- 3번
(3, "콩나물", "1봉지"), (3, "대파(또는 쪽파)", "1/6대"), (3, "당근", "1/5개"), (3, "고춧가루", "2큰술"), (3, "다진마늘", "1/2큰술"), (3, "참기름", "1큰술"), (3, "진간장", "1큰술"),
-- 4번
(4, "떡볶이떡", "2컵"), (4, "물", "2컵"), (4, "대파", "1/2대"), (4, "통깨", "약간"), (4, "고추장", "2T"), (4, "고추가루", "1.5T"), (4, "간장", "2T"),
-- 5번
(5, "비엔나소세지", "1봉지"), (5, "양파", "1/3"), (5, "파프리카", "1/3"), (5, "당근", "1/3"), (5, "케찹", "2T"), (5, "고추장", "1T"), (5, "굴소스", "1T"), (5, "올리고당", "1T"), (5, "다진마늘", "1/3T"),
-- 6번
(6, "군 고구마", "적당량"),
-- 7번
(7, "새송이버섯", "2개"), (7, "버터", "30g"), (7, "간장", "1T"), (7, "맛술", "1T"), (7, "올리고당", "1/2T"),
-- 8번
(8, "밀가루박력분", "75g"), (8, "아몬드가루", "25g"), (8, "설탕", "35T"), (8, "베이킹파우더", "1g"), (8, "소금", "0.5g"), (8, "차가운 버터", "65g"),
-- 9번
(9, "어린 호박잎", "1줌"), (9, "밥", "적당량"),
-- 10번
(10, "위스키", "30ml"), (10, "레몬 혹은 레몬즙", "1개"), (10, "토닉워터", "120ml")
;


INSERT INTO step (recipe_id, recipe_num, description) VALUES
-- 1번
(1, 1, "야채준비는요 당근도 모서리를 둥글게 만들어주세요 그래야 뭉게지지 않고 모양이 그대로 나와요"), (1, 2, "양파 아주 듬성듬성 크게 썰구요 대파, 청양고추, 감자"),
(1, 3, "양념준비는요 고추장 반스푼, 고추가루 3스푼, 맛간장 3스푼, 국간장 1스푼, 매실 1스푼, 미림 1스푼, 설탕 1스푼, 마늘 생강"), (1, 4, "이제 요리 시작해 볼게요 닭은 끓는 물에 데쳐 주세요"),
(1, 5, "껍질 벗기고 깨끗히 씻었구요"),
-- 2번
(2, 1, "고구마는 껍질을 벗겨서 준비"), (2, 2, "껍질을 벗긴 고구마를 한 입 크기로 잘라주고 위생 봉투에 담아서 올리브오일 4큰술 넣어 비닐째로 흔들어준다."),
(2, 3, "오일이 잘 묻을 수 있도록 이리저리 흔들어준다"), (2, 4, "에어프라이어에 200도에서 20분 구워주기 고구마의 크기에 따라 굽기 정도가 틀릴 수 있으니 굽는 시간이 달라질 수 있다"),
(2, 5, "노릇하게 잘 구워진 고구마~ 그냥 요래 먹어도 맛있다^^");
-- 3번
(3, 1, "콩나물은 흐르는 물에 여러 번 조심스레 씻어준 뒤 체에 밭쳐 물기를 빼둡니다.당근은 색내기용으로 조금 넣어줬어요. 안 넣으셔도 무방합니다. 대파도 송송 잘라 준비합니다."),
(3, 2, "냄비에 물이 끓기 시작하면 소금 반 큰 술과 콩나물을 넣어줍니다. 콩나물은 센 불에서 팔팔 끓여주시고요. 데치는 시간은 양에 따라 달라지는데요. 보통 4-6분 사이가 적당하다고 하니 참고하세요! 뽕림이는 5분 정도 삶아주니까 딱 좋더라고요."),
(3, 3, "데친 콩나물은 체에 밭쳐 물기를 충분히 빼주세요."),
(3, 4, "어느 정도 물기가 빠졌다면 볼에 콩나물을 넣고, 채 썬 당근, 대파를 넣어줍니다."),
(3, 5, "그리고 나서 고춧가루 2 큰 술, 소금 적당량, 다진 마늘 반 큰 술, 깨소금을 적당량 넣어주세요."),
(3, 6, "진간장도 한 큰 술 투척한 뒤 콩나물 대가리가 떨어지지 않도록 조심스레 섞어주세요."),
(3, 7, "마지막으로 참기름 한 큰 술 두르고 조물조물해준 뒤 맛을 봐주세요. 약간 싱거우시다면 간장 또는 소금으로 간을 해주시면 됩니다."),
(3, 8, "이렇게 10분 만에 완성된 초간단 콩나물무침! 오늘도 백종원 아저씨의 레시피 덕분에 힘들이지 않고 반찬 하나 뚝딱 만들었네요 ^^"),
-- 4번
(4, 1, "먼저 종이컵 기준 물 2컵에 떡볶이떡을 넣고 센불에서 팔팔 끓여 줍니다."),
(4, 2, "물이 팔팔 끓으면 양념을 다 넣어준 뒤 잘 풀어주고 또 자글자글 끓여 줍니다."),
(4, 3, "국물이 졸아들면 대파를 가위로 쫑쫑 썰어 넣어주시고 통깨 약간 뿌려 주시면 끝!"),
(4, 4, "너무 간단한데 맛있어서 놀라는 백종원 분식점 떡볶이 완성입니다!"),
(4, 5, "한개 먹어보니 어머머!정말 분식점에서 파는 떡볶이 맛이 나면서 넘 맛있어요. 너무 간단한데 맛있어서 놀랬어요^^"),
-- 5번
(5, 1, "야채를 먹기 좋은 크기로 잘라주세요."),
(5, 2, "비엔나소세지에 칼집을 내어 끓는 물에 데쳐주세요. 데치는 과정은 생략 가능하지만, 저는 불순물 제거와 예쁜 모양을 위해 꼭 해주고 있어요."),
(5, 3, "양념장을 만들어주세요."),
(5, 4, "식용유를 팬에 두르고, 손질해둔 야채는 중약불로 볶아주세요."),
(5, 5, "야채가 어느 정도 익었다면 소세지를 넣고 2~3분간 볶아주세요."),
(5, 6, "미리 만들어둔 양념장을 넣고 약불로 3분간 볶아주세요."),
-- 6번
(6, 1, "먼저 고구마를 깨끗이 세척해주세요."),
(6, 2, "에어프라이어에 종이 포일을 깐 뒤 세척한 고구마를 넣어줍니다."),
(6, 3, "200도에서 25분 정도 먼저 돌려줍니다. 5-10분 정도 지나자 고구마의 달달한 냄새가 진동 +_+ 빨리 먹고 싶당!"),
(6, 4, "띵 소리가 나자마자 달려가 문을 열어보니 요렇게 잘 익은 군고구마가 뿅! 하지만 나는 좀 더 군고구마스러운 군고구마를 먹고 싶어!"),
(6, 5, "그래서 15분 더 돌려주기로 했어요."),
(6, 6, "15분 후 요렇게 먹음직스럽게 잘 구워진 군고구마가 딱 ~"),
-- 7번
(7, 1, "버섯의 밑동과 갓을 잘라낸 뒤, 3~4등분 한다"),
(7, 2, "자른버섯의 양면에 칼집을 낸다"),
(7, 3, "팬에 버터를 녹인다"),
(7, 4, "버섯을 굽는다"),
(7, 5, "불을 약불로 줄이고 소스를 넣고 졸인다"),
-- 8번
(8, 1, "버터바를 만들어 줄 트레이에 유선지를 알맞은 사이즈로 깔아줍니다."),
(8, 2, "박력분 75g, 아몬드가루 25g, 설탕 35g, 베이킹파우더 1g, 소금 0.5g, 차가운 버터 65g를 모두 푸드프로세서에 넣어주세요."),
(8, 3, "반죽을 잘 섞어주세요. 기계가 없으면 믹서로 저어도 됩니다."),
(8, 4, "반죽을 틀에 넣고 골고루 펴줍니다. 바닥에 구멍 뚫어주세요"),
(8, 5, "180도로 예열한 오븐에서 190도로 20분 구워줍니다."),
(8, 6, "잘 구워진 시트는 완전히 식혀주세요."),
-- 9번
(9, 1, "1,어린 호박잎은 줄기를 꺽어 질긴 껍질을 벗겨냅니다 2,찜기에 물이 끓으면 호박잎을 넣고 5분간 찝니다 3,삶은 호박잎은 찬물에 헹굼하고 물기제거~	"),
(9, 2, "모든 재료는 굵게 다지듯 썰어 주세요"),
(9, 3, "렌틸콩은 반나절 이상 불린 후 냄비에 물 반컵에 렌틸콩을 넣고 2분간 삶아요 우렁이는 소금 약간넣어 조물조물 씻어 굵게 잘라 놓으세요"),
(9, 4, "쌈장만들기-뚝배기에 들기름1T를 넣고 우렁이를 볶다가 청주1T넣고 다시물5T를 넣고 우렁이를 익힌 후 렌틸콩 썰어놓은 채소는 모두 넣어요"),
(9, 5, "채소가 반정도 익으면 된장과 고추장 고춧가루를 넣고 바닥이 타지않게 저어 가며 재료가 잘 섞어주세요 약 2분정도 끓이면 되겠어요~"),
(9, 6, "도마위에 호박잎을 올리고 밥 1큰술+ 쌈장 적당히 올려 돌돌 말아 주면 됩니다"),
-- 10번
(10, 1, "레몬은 반으로 잘자른 뒤 토핑으로 올려줄 조각을 빼고 즙을 내어줍니다."),
(10, 2, "잔에 얼음을 가득 채워 줍니다."),
(10, 3, "위스키 30ml 를 먼저 넣고"),
(10, 4, "소다수 120ml를 넣어주었답니다."),
(10, 5, "여기에 상큼함을 더해줄 레몬즙을 넣어주면 향도 좋고 맛도 좋아요."),
(10, 6, "위스키하이볼 완성입니다. 레몬 한 조각을 올려주면 한 끗 차이로 분위기 좋은 술집에 온 기분이 들지요.");


INSERT INTO review (writer, recipe_id, description, rating) VALUES
(1, 1, "존맛", 5), (2, 1, "노맛", 1), (1, 2, "존맛", 5), (2, 2, "괜찮네요", 4), (3, 2, "왜 먹음?", 0),
(1, 3, "마시따", 5), (2, 3, "쏘쏘", 3), (1, 4, "마싯네요", 5), (3, 4, "굿굿", 5);

-- migrate:down
