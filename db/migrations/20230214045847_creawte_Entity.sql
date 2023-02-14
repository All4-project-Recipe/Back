-- migrate:up
INSERT INTO user (name, email) VALUES ("미루나무", "mell@naver.com"), ("판교댁쏭아", "mell2@naver.com");

INSERT INTO recipe (title, writer, description, amount, spend_time, level) VALUES
("**이거 하나면 반찬 걱정 뚝! 매콤 부드러운 닭볶음탕 만드는법", 1, "누구나 좋아하는 닭볶음탕 만들어볼게요", "4인분", "60분 이내", "중급"),
("**고구마맛탕 만들기 에어프라이어로 간단하게**", 2, "아이들 간식으로 고구마 맛탕을 만들었다 늘 찌거나 구워 먹던 고구마를 오늘은 조금 더 달달하고 쫀득하게 만든 간식이라 아이들 참 좋아한다 늘 그렇듯 손 많이 가는 음식을 만들기에는 시간이 촉박해^^;; 고구마 맛탕을 초간단 편하게 만들어 주니 나름 신경 쓴 티는 나지만 사실 손 갈게 거의 없다.", "4인분", "20분 이내", "초급");

INSERT INTO ingredients (recipe_id, name, amount) VALUES
(1, "닭", "1마리"), (1, "양파", "1개"), (1, "감자", "1개"), (1, "대파", "1개"), (1, "청양고추", "1개"), (1, "당근", "1개"), (1, "물", "1L"),
(2, "고구마", "3~4개"), (2, "조청", "4큰술"), (2, "올리브오일", "4큰술"), (2, "통깨", "약간");

INSERT INTO step (recipe_id, recipe_num, description) VALUES
(1, 1, "야채준비는요 당근도 모서리를 둥글게 만들어주세요 그래야 뭉게지지 않고 모양이 그대로 나와요"), (1, 2, "양파 아주 듬성듬성 크게 썰구요 대파, 청양고추, 감자"),
(1, 3, "양념준비는요 고추장 반스푼, 고추가루 3스푼, 맛간장 3스푼, 국간장 1스푼, 매실 1스푼, 미림 1스푼, 설탕 1스푼, 마늘 생강"), (1, 4, "이제 요리 시작해 볼게요 닭은 끓는 물에 데쳐 주세요"),
(1, 5, "껍질 벗기고 깨끗히 씻었구요"),
(2, 1, "고구마는 껍질을 벗겨서 준비"), (2, 2, "껍질을 벗긴 고구마를 한 입 크기로 잘라주고 위생 봉투에 담아서 올리브오일 4큰술 넣어 비닐째로 흔들어준다."),
(2, 3, "오일이 잘 묻을 수 있도록 이리저리 흔들어준다"), (2, 4, "에어프라이어에 200도에서 20분 구워주기 고구마의 크기에 따라 굽기 정도가 틀릴 수 있으니 굽는 시간이 달라질 수 있다"),
(2, 5, "노릇하게 잘 구워진 고구마~ 그냥 요래 먹어도 맛있다^^");

INSERT INTO review (writer, recipe_id, description, rating) VALUES (1, 1, "존맛", 5), (2, 1, "노맛", 1);

-- migrate:down
