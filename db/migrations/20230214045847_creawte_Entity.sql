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
("뽕남이", "mell6@naver.com"),
-- 7번
("루던", "mell7@naver.com"),
-- 8번
("영주", "mell8@naver.com"),
-- 9번
("815요리사랑", "mell9@naver.com"),
-- 10번
("반이짝이", "mell10@naver.com"),
-- 11번
("시크제이맘", "jay@naver.com"),
-- 12번
("승혜의야미로그", "shyl@naver.com"),
-- 13번
("꽃청춘이주부", "flower@naver.com"),
-- 14번
("양싸", "dfewwfwe@naver.com"),
-- 15번
("요리하는아내", "yori@naver.com"),
-- 16번
("매지니", "maemae@naver.com"),
-- 17번
("만개", "10000count@naver.com"),
-- 18번
("신땡쿡", "cook@naver.com"),
-- 19번
("킴유대앵", "kim1212@naver.com"),
-- 20번
("ciel", "ciel@naver.com")
;

INSERT INTO recipe (title, writer, description, amount, spend_time, level, img_url) VALUES
-- 1번
("**이거 하나면 반찬 걱정 뚝! 매콤 부드러운 닭볶음탕 만드는법", 1, "누구나 좋아하는 닭볶음탕 만들어볼게요", "4인분", "60분 이내", "중급", "localhost:8000/2076df59d8069db371742e6c146118db1_m.jpeg"),
-- 2번
("**고구마맛탕 만들기 에어프라이어로 간단하게**", 2, "아이들 간식으로 고구마 맛탕을 만들었다 늘 찌거나 구워 먹던 고구마를 오늘은 조금 더 달달하고 쫀득하게 만든 간식이라 아이들 참 좋아한다 늘 그렇듯 손 많이 가는 음식을 만들기에는 시간이 촉박해^^;; 고구마 맛탕을 초간단 편하게 만들어 주니 나름 신경 쓴 티는 나지만 사실 손 갈게 거의 없다.", "4인분", "20분 이내", "초급", "localhost:8000/9ae57a6045ffce5fdbe74977bb060bbe1_m.jpeg"),
-- 3번
("**백종원레시피로 만든 콩나물무침으로 밥 한 끼 뚝딱 ~", 3, "오늘은 오래간만에 고춧가루 넣은 콩나물무침을 만들어봤어요. 아삭아삭 식감에 칼칼한 맛이 매력적인 매콤 콩나물무침!", "2인분", "10분 이내", "아무나", "localhost:8000/93dd58483544283879abe07cb3ca75961_m.jpeg"),
-- 4번
("**너무 간단한데 맛있어서 놀라는 백종원 분식점 떡볶이 황금 레시피", 4, "분식점에서 파는 맛 나는 백주부님 떡볶이!만드는 방법은 너무 간단한데 맛있어서 놀랜답니다!", "2인분", "15분 이내", "아무나", "localhost:8000/0c1ed719e27341c9401c6456c513fceb1_m.jpeg"),
-- 5번
("**소세지야채볶음 황금레시피, 쏘야 맛있게만들기", 5, "우리집 단골 메뉴 소세지야채볶음! 일명 '쏘야'라고도 불리우죠. 쏘야는 아이들 반찬으로도 어른들 술안주로도 먹기 정말 좋아요!", "4인분", "30분 이내", "초급", "localhost:8000/068372833c2d4a73124070c335a733281_m.jpeg"),
-- 6번
("**에어프라이어로 군고구마 굽는 법", 6, "에어프라이어로 군고구마를 만들어보았어요.", "2인분", "60분 이내", "아무나", "localhost:8000/e30e0971a9f32d493d027cd7cb97f5121_m.jpeg"),
-- 7번
("**버섯으로 관자 느낌 내는 방법! 새송이버섯간장버터구이 만들기", 7, "지금까지 이런 버섯은 없었다. 이것은 관자인가 버섯인가", "1인분", "15분 이내", "아무나", "localhost:8000/39ac1e73e998e88da300d38663242f0a1_m.jpeg"),
-- 8번
("**[베이킹]버터바 만들기 / 버터바 레시피", 8, "버터바는 일명 쫀득바, 꾸덕바 라고 불리는데 저는 요걸 유ab0dd12cf477c21f9104004a18f8beab1_m.jpeg명 베이커리에서 처음 먹고 반했죠!", "2인분", "60분 이내", "초급", "localhost:8000/8474d312a6781a3d6c7d5759f0b475a21_m.jpeg"),
-- 9번
("**호박잎요리/호박잎쌈밥", 9, "텃밭요리~호박잎과 우렁이 렌틸콩으로 갖은 양념해 짜글짜글 끓여 쌈장을 만들어 호박잎에 쌈장을 넣고 돌돌 말았어요 모양도 예쁘고 만들기도 쉬운 요리이지요", "6인분 이상", "60분 이내", "중급", "localhost:8000/33ed7c6ff6f97afbbf770374bdc74c131_m.jpeg"),
-- 10번
("**하이볼 만드는법 위스키 하이볼 만들기", 10, "육퇴후 신랑과 가볍게 한잔하곤 하는데요. 가장 즐겨 마시는 게 맥주이지만 요즘은 위스키에 토닉워터 섞어 레몬 넣은 산뜻한 하이볼을 즐겨마시고 있어요. 엄청 예전에 일본 여행을 갔을 때 처음 맛보고는 완전 취향저격이더라고요. 그래서 여행 내내 즐겨마셨던 추억이 있어요.", "6인분 이상", "60분 이내", "중급", "localhost:8000/53dda3df69072c17fb56e63fc1eb1ac91_m.jpeg"),
-- 11번
("**순대볶음 - 매콤달콤 순대볶음", 11, "맛있는 순대볶음 만들어보아요~~", "3인분", "30분 이내", "아무나", "localhost:8000/67900157e517d8fe70737d6718fdfb931_m.jpeg"),
-- 12번
("**크림파스타 만들기 크림스파게티 만드는 법 생각보다 간단해요 :)", 12, "예전에 크림파스타가 생각보다 만들기 쉽다고 들은 적이 있어서 이번 기회에 한번 만들어보기로 했어요.진짜 간단해서 놀랬어요! 우리 같이 크림파스타 만들기 시작해보아요!", "1인분", "20분 이내", "초급", "localhost:8000/2e5a56658f3abe62fa741b2958e3354e1_m.jpeg"),
-- 13번
("**[간단요리]간장계란밥 만드는법,계란요리,자취생간단요리)", 13, "오늘은! 자취요리계의 대표주자! 간장계란밥!!!", "1인분", "5분 이내", "아무나", "localhost:8000/115b2b934fd77085518877677d1266fa1_m.jpeg"),
-- 14번
("**[연근조림] 아작 아작 달콤 짭쪼름한 연근 조림 만들기", 14, "연근 조림.. 너무나 좋아합니다. 밥도둑 너란 밥도둑.. 아작 아작 달콤 짭쪼름~ 연근조림 만들어봐요*대용량 주의*", "6인분 이상", "30분 이내", "아무나", "localhost:8000/8c5985330bbbd967a694b4a994063df61_m.jpeg"),
-- 15번
("**백종원 어묵볶음 만드는법 간단하면서 맛있다", 15, "오늘은 간단한 밑반찬 레시피를 갖고 왔어요 :) 바로 제가 애정하는 백종원 선생님의 레시피로 어묵 볶음을 만들어 봤어요", "4인분", "30분 이내", "아무나", "localhost:8000/eddabfd7eec938df019816582dcab2ec1_m.jpeg"),
-- 16번
("**닭가슴살덮밥", 16, "이번에 만들어 본것은 닭가슴살 덮밥인데요. 좋아하는 야채를 넣어 만들어서 간단히 한끼로 먹기 넘 좋더라구요. 건강에 좋은 애호박과 양파도 듬뿍 넣어 만들어서 한끼 건강하게 먹을 수 있는 식단인것 같아요.", "2인분", "15분 이내", "아무나", "localhost:8000/d4cbe7409050f2e0437c4af202d09a1f1_m.jpeg"),
-- 17번
("**카이막 만들기, 집에서 더 손쉽고 신선하게", 17, "요즈음 뜨는 튀르키예 디저트, 카이막! 만드는 방법은 어렵지 않지만 시간이 다소 소요돼 아직 카페에서도 쉽게 볼 수 없는 메뉴죠.", "2인분", "2시간 이상", "아무나", "localhost:8000/8073f661367018617382955d534f3e521_m.png"),
-- 18번
("**오버나이트오트밀 황금레시피", 18, "오트밀로 다이어트 밀프랩만들기 오버나이트오트밀로 단백질, 식이섬유, 비타민, 칼슘 챙겨보아요❤", "1인분", "5분 이내", "초급", "localhost:8000/ec1140d4d86a5303fa46fdcba1fdddfd1_m.jpeg"),
-- 19번
("**초간단 머그컵 퐁당 오 쇼콜라*.*", 19, "단거를 너무 좋아해서 집에서 땡길때 마다 숟가락 하나로 만들어 먹었어요@,@ 노오븐 노계량 노버터에 집에 거의 있는 재료들로 뚝딱할 수 있음! 달달한 디저트 땡길때 추천이에", "1인분", "5분 이내", "초급", "localhost:8000/ab0dd12cf477c21f9104004a18f8beab1_m.jpeg"),
-- 20번
("**백종원 우유푸딩 만들기, 초간단 간식!", 20, "코로나 초반에 카페는 못가고 달달구리는 땡길 때가 있었는데요, 집에서 만들 수 있는 간단한 간식 우유푸딩을 만들어봤어요 백종원우유푸딩 레시피를 토대로 초코푸딩과 밀크티 푸딩도 만들어 봤어요", "2인분", "5분 이내", "아무나", "localhost:8000/f2f69acfe3a3bfd75720a3d0fbefd54f1_m.jpeg")
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
(10, "위스키", "30ml"), (10, "레몬 혹은 레몬즙", "1개"), (10, "토닉워터", "120ml"),
-- 11번
(11, "순대", "500g"), (11, "양배추", "1/3개"), (11, "깻잎", "10장"), (11, "양파", "1/2개"), (11, "대파", "1/3개"), (11, "당근", "1/3개"), (11, "통깨", "약간"),
-- 12번
(12, "올리브유", "약간"), (12, "베이컨 작은 거", "4장"), (12, "소금", "약간"), (12, "흰우유", "180ml"), (12, "다진마늘", "1스푼"), (12, "채 썬 양파", "적당량"), (12, "파스타면", "1인분"), (12, "체다치즈", "2장"), (12, "후추", "약간"), (12, "양송이버섯", "2개"),
-- 13번
(13, "밥", "1공기"), (13, "식용유", "2스푼"), (13, "참기름", "1스푼"), (13, "계란", "3개"), (13, "진간장", "1스푼"), (13, "깨", "약간"),
-- 14번
(14, "연근", "800g"), (14, "식초", "3T"), (14, "소금", "1/2T"),
-- 15번
(15, "어묵", "210g"), (15, "당근", "1/2개"), (15, "양파", "1/2개"), (15, "양파", "1/2개"), (15, "양파", "1/2개"), (15, "양파", "1/2개"),
-- 16번
(16, "닭가슴살", "1개"), (16, "어묵 ", "조금"), (16, "애호박", "1/2개"), (16, "양파", "1/2개"), (16, "달걀", "2개"), (16, "공깃밥", "2인분"),
-- 17번
(17, "우유", "1L"), (17, "생크림 ", "1L"), (17, "빵", "많이"), (17, "연유", "1개"),
-- 18번
(18, "오트밀", "3T"), (18, "두유", "자작하게"), (18, "바나나", "1/2개"), (18, "견과류", "1T"), (18, "딸기", "2개"), (18, "치아씨드", "1T"),
-- 19번
(19, "초콜렛", "2스푼"), (19, "카놀라유", "2스푼"), (19, "밀가루", "1스푼"), (19, "설탕", "3스푼"), (19, "계란", "1개"),
-- 20번
(20, "우유", "1.5컵"), (20, "판젤라틴", "2장"), (20, "백설탕", "2스푼")
;



INSERT INTO step (recipe_id, recipe_num, description) VALUES
-- 1번
(1, 1, "야채준비는요 당근도 모서리를 둥글게 만들어주세요 그래야 뭉게지지 않고 모양이 그대로 나와요"), (1, 2, "양파 아주 듬성듬성 크게 썰구요 대파, 청양고추, 감자"),
(1, 3, "양념준비는요 고추장 반스푼, 고추가루 3스푼, 맛간장 3스푼, 국간장 1스푼, 매실 1스푼, 미림 1스푼, 설탕 1스푼, 마늘 생강"), (1, 4, "이제 요리 시작해 볼게요 닭은 끓는 물에 데쳐 주세요"),
(1, 5, "껍질 벗기고 깨끗히 씻었구요"),
-- 2번
(2, 1, "고구마는 껍질을 벗겨서 준비"), (2, 2, "껍질을 벗긴 고구마를 한 입 크기로 잘라주고 위생 봉투에 담아서 올리브오일 4큰술 넣어 비닐째로 흔들어준다."),
(2, 3, "오일이 잘 묻을 수 있도록 이리저리 흔들어준다"), (2, 4, "에어프라이어에 200도에서 20분 구워주기 고구마의 크기에 따라 굽기 정도가 틀릴 수 있으니 굽는 시간이 달라질 수 있다"),
(2, 5, "노릇하게 잘 구워진 고구마~ 그냥 요래 먹어도 맛있다^^"),
-- 3번
(3, 1, "콩나물은 흐르는 물에 여러 번 조심스레 씻어준 뒤 체에 밭쳐 물기를 빼둡니다.당근은 색내기용으로 조금 넣어줬어요. 안 넣으셔도 무방합니다. 대파도 송송 잘라 준비합니다."),
(3, 2, "냄비에 물이 끓기 시작하면 소금 반 큰 술과 콩나물을 넣어줍니다. 콩나물은 센 불에서 팔팔 끓여주시고요. 데치는 시간은 양에 따라 달라지는데요. 보통 4-6분 사이가 적당하다고 하니 참고하세요! 뽕림이는 5분 정도 삶아주니까 딱 좋더라고요."),
(3, 3, "데친 콩나물은 체에 밭쳐 물기를 충분히 빼주세요."),
(3, 4, "어느 정도 물기가 빠졌다면 볼에 콩나물을 넣고, 채 썬 당근, 대파를 넣어줍니다."),

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
-- 10번
(10, 1, "레몬은 반으로 잘자른 뒤 토핑으로 올려줄 조각을 빼고 즙을 내어줍니다."),
(10, 2, "잔에 얼음을 가득 채워 줍니다."),
(10, 3, "위스키 30ml 를 먼저 넣고"),
(10, 4, "소다수 120ml를 넣어주었답니다."),
(10, 5, "여기에 상큼함을 더해줄 레몬즙을 넣어주면 향도 좋고 맛도 좋아요."),
(10, 6, "위스키하이볼 완성입니다. 레몬 한 조각을 올려주면 한 끗 차이로 분위기 좋은 술집에 온 기분이 들지요."),
-- 11번
(11, 1, "순대는 마트에서 쉽게 구입할수 있어요. 분식집에서 구입하는것보다 양도 많고 가격도 저렴하답니다. 뜨거운물에 데쳐서 따뜻하게 준비해주세요"),
(11, 2, "분량대로 양념장을 만들어주세요. 고추장2,고춧가루3,간장2,올리고당2,다진마늘1,다진파2,미림2,청주2,생강가루0.3,물1/2컵"),
(11, 3, "순대볶음에 들어갈 채소를 준비하고 양배추,당근,양파,깻잎,대파"),
(11, 4, "데쳐놓은 순대는 먹기 좋은 크기로 썰고 순대를 미리 데쳐서 사용하심 볶다 순대가 터지는 일이 없어요."),
(11, 5, "팬에 식용유를 두르고 양파,당근,양배추를 달달 볶아주세요 3분정도"),
-- 12번
(12, 1, "먼저 베이컨을 먹기 좋은 크기로 잘라주세요. 양송이버섯도 씻어서 잘라주세요."),
(12, 2, "오늘 크림파스타는 1인분만 만들 거라 100원 동전 크기 정도의 크림파스타를 만들게요. 보기엔 양이 적어 보여도 면을 익히고 크림소스가 추가되면 양이 딱 좋을 것 같아요."),
(12, 3, "끓는 물에 소금을 약간 넣어서 팔팔 끓여주세요."),
(12, 4, "파스타 건면을 골고루 펼쳐 넣어주세요."),
(12, 5, "젓가락으로 면을 끓는 물 안으로 넣어서 2분 정도만 익혀주세요. 크림소스에 다시 면을 넣어서 같이 익혀줄 거라서 2분 정도가 적당해요!"),
-- 13번
(13, 1, "계란3개중에 2개만 이렇게 풀어서 준비합니다."),
(13, 2, "풀어놓은 계란은 후라이팬에 식용유를 넣고 젓가락으로 휘져어 가면서 너무 뭉치지 않게 해주세요. 자 이제 에그스크럼블식으로 만든 계란은 가스불을 꺼주세요."),
(13, 3, "여기에 따뜻한 밥 1그릇을 넣고,"),
(13, 4, "진간장1스푼,참기름1스푼을 넣고,"),
(13, 5, "밥과 계란, 그리고 양념이 잘섞이도록 섞어줍니다."),
(13, 6, "그릇에 간장계란밥을 올리고 반숙후라이를 올린후 집에 김이 있으면 김을 잘라 올려주시면 간장계란밥 완성입니다!"),
-- 14번
(14, 1, "감자칼로 연근의 껍질을 벗겨주세요."),
(14, 2, "그리고 적당한 두께로 잘라주세요. 자르시고 물에 한번 깨끗이 씻어주세요."),
(14, 3, "냄비에 연근을 넣고 식초 3T를 넣어줍니다. 식초를 넣는 이유는 연근의 아린맛을 없애주려고 넣어요. 소금 1/2T도 넣고 연근이 반쯤 익을때까지 삶아줍니다."),
(14, 4, "연근을 식초 넣고 한번 삶아주면 조릴때 더 편하겠죠? 체에받쳐 물만 버려주세요."),
(14, 5, "물 600cc, 간장 20T, 설탕 15T, 물엿 10T, 깨를 넣고 양념장을 만들어주세요."),
(14, 6, "냄비에 연근과 양념장을 넣고 센불에서 끓이시다가 어느정도 물이 졸아들면 중불로 바꾸시고 졸여주시면 됩니다."),
-- 15번
(15, 1, "당근은 얇게 썰어주세요"),
(15, 2, "양파 반개는 8등분으로 듬성듬성 잘라주세요"),
(15, 3, "마늘 6~7톨은 잘게 다져서 준비합니다"),
(15, 4, "어묵은 210g 되는 양인데 네모난 어묵 3장정도 되더라고요 길게 잘라줬어요"),
(15, 5, "설탕 1큰술에 간장 3큰술을 넣어주세요 참기름 1큰술에 소금 0.5작은술을 넣고 잘 저어줍니다"),
(15, 6, "마늘을 볶은 뒤 어묵을 넣고 볶아주세요"),
-- 16번
(16, 1, "재료가 준비 되시면 양념장을 만들어 주세요. 물 150ml, 설탕 2큰술, 간장 4큰술, 다진마늘 1큰술, 참기름 2큰술, 올리고당 1큰술, 고춧가루를 넣어주신 후 잘 섞어주세요."),
(16, 2, "계란은 두개를 풀어서 약간만 섞어주세요. 근데 전 해보구 나니 양이 적더라구요. 푸짐한 계란이 들어간 덮밥이 되려면 1인당 2개씩 4개의 달걀물을 만드는게 좋갰더라구요."),
(16, 3, "먼저 올리브유를 두른후 준비한 애체와 닭가슴살 오뎅을 모두 볶아주세요. 전 닭가슴살이 훈제로 익은 상태의 제품이라 야채랑 같이 볶았는데요. 혹시 생 닭가슴살을 이용하시면 먼저 볶다가 야채를 넣어주시면 되요."),
(16, 4, "애호박과 양파가 반쯤 익어 투명해지면 이때 양념장을 부어주세요."),
-- 17번
(17, 1, "전기밥솥에 우유, 생크림을 붓고 섞어요."),
(17, 2, "보온 기능으로 12시간 숙성해요."),
(17, 3, "뚜껑을 덮거나 랩을 씌우고, 24시간 냉장해요."),
(17, 4, "굳은 표면을 조심조심 건져요."),
(17, 5, "칼로 3등분해 돌돌 말아요."),
(17, 6, "카이막에 빵이나 연유를 곁들이면 더욱 맛있어요."),
-- 18번
(18, 1, "오트밀3T, 바질시드1t + 두유를 잠기도록 넣고 하룻밤 냉장실에서 불려주세요"),
(18, 2, "하룻밤 불린 오트밀 위에 다음날 요거트 3T넣어주시고 땅콩분태1t, 견과류는 1T 넣어주세요"),
(18, 3, "바나나 1/2개씩 잘라서 넣어주세요"),
(18, 4, "좋아하는 과일을 넣어주세요 여름엔 수분이 많은 과일이 많아 냉동과일을 사용해요"),
(18, 5, "마지막으로 치아시드 1t넣고 끝~♡ 하루 한끼 오나오로 가볍고 맛있게 하시면 됩니다"),
-- 19번
(19, 1, "머그컵에 초콜렛 2스푼, 설탕 3스푼, 오일 2스푼을 넣고 섞어주세요~"),
(19, 2, "전자렌지에 30초씩 2번 돌려서 녹여주세요 (한번에 돌리면 초코가 타니까 30초씩해서 총 1분)"),
(19, 3, "녹인 초코에 계란 한 알을 넣고 섞어주세요"),
(19, 4, "밀가루 한스푼 넣어주세요 (체에 치면 좋음, 귀찮으면 숟가락으로 잘 섞으면 돼욤)"),
(19, 5, "코코아 가루나 핫초코 가루 2스푼 넣고 잘 섞어주세요"),
(19, 6, "전자렌지에 40초를 머그컵채로 돌려주면 끝!!!"),
-- 20번
(20, 1, "판젤라틴은 물에 넣어 불려주세요"),
(20, 2, "냄비에 준비된 우유를 넣고 설탕 2스푼을 넣어주세요"),
(20, 3, "불려둔 젤라틴을 물을 꼭 짜서! 넣고, 중불로 2분정도 끓여주세요"),
(20, 4, "끓인 푸딩액을 병에 담아주고 냉장고에서 4~5시간 굳혀주면 완성!");



INSERT INTO review (writer, recipe_id, description, rating) VALUES
(1, 1, "존맛", 5), (2, 1, "노맛", 1), (1, 2, "존맛", 5), (2, 2, "괜찮네요", 4), (3, 2, "왜 먹음?", 0),
(1, 3, "마시따", 5), (2, 3, "쏘쏘", 3), (1, 4, "마싯네요", 5), (3, 4, "굿굿", 5), (2, 5, "맛있네용~", 5),
(2, 6, "맛있네용~", 4), (2, 7, "good", 4), (4, 1, "맛있군", 4), (4, 3, "나쁘지 않음", 3), (4, 4, "맛있네", 5),
(2, 12, "맛있네용~", 4), (2, 12, "good", 4), (4, 12, "맛있군", 4), (1, 13, "맛있네용~", 4), (2, 13, "굿굿", 5), (4, 13, "맛있군", 4),
(2, 14, "맛있네용~", 4), (2, 14, "good", 3), (4, 14, "맛있군", 4), (4, 14, "나쁘지 않음", 3), (4, 14, "맛있네", 4),
(2, 15, "맛있당", 5), (2, 15, "good~~", 4), (4, 15, "맛있군", 4), (4, 15, "나쁘지 않음", 3), (4, 15, "맛있네", 5),
(2, 16, "구냥그럼...", 2), (2, 16, "good!!", 4), (4, 16, "머 맛있네 ㅋ", 4), (4, 16, "나쁘지 않음", 3), (4, 16, "개별루..", 1),
(2, 17, "구냥그럼...", 1), (2, 17, "good!!", 4), (4, 17, "머 맛있네 ㅋ", 4), (4, 17, "나쁘지 않음", 3), (4, 17, "개별루..", 1),
(2, 18, "구냥그럼...", 3), (2, 18, "good이요~~~~~~", 5), (4, 18, "머 맛있네 ㅋ", 5), (4, 18, "나쁘지 않음", 3), (4, 18, "개별루..", 1),
(2, 19, "구냥그럼...", 1), (2, 19, "good이요~~~~~~", 5), (4, 19, "머 맛있네 ㅋ", 5), (4, 19, "나쁘지 않음", 3), (4, 19, "개별루..", 1),
(2, 20, "구냥그럼...", 1), (2, 20, "good이요~~~~~~", 5), (4, 20, "머 맛있네 ㅋ", 5), (4, 20, "나쁘지 않음", 3), (4, 20, "개별루..", 1);

