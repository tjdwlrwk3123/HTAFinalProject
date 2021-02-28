Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (1,'투어');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (2,'펜션');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (3,'캠핑');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (4,'게스트하우스');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (5,'기타');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (11,'투어리뷰');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (111,'투어디테일');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (55,'숙소리뷰');
Insert into FINAL.CATEGORY (CATE_NUMBER,CATE_NAME) values (555,'숙소디테일');

Insert into FINAL.CHATUSERS (NUM,USERNAME,USING) values (1,'customer1',0);
Insert into FINAL.CHATUSERS (NUM,USERNAME,USING) values (2,'customer2',0);
Insert into FINAL.CHATUSERS (NUM,USERNAME,USING) values (3,'customer3',0);
Insert into FINAL.CHATUSERS (NUM,USERNAME,USING) values (4,'customer4',0);

Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('test','1234','테스트','SILVER','test@me.com','강남구','010121121122','1',0);
Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('kaka','1234','카카','VIP','kaka@me.com','강남구','01099998888','1',9776950);
Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('admin','1234','관리자','VIP','admin@me.com','강남구','01011112222','1',100000);
Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('tjdwlrwk3123@naver.com','$2a$10$U.kQZeA5h8dVR48Z1EoXhuHb43u3gUqSrUum4lCImWoSYrK1rbxJa','양기홍★','Bronze','tjdwlrwk3123@naver.com','서울 양천구 신월동 1027 203동 702호','01074253618','1',0);

Insert into FINAL.ID_TOKEN (TOKEN_NUMBER,USER_ID) values (1,'tjdwlrwk3123@naver.com');

Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (0,2,'kaka','북촌 인우하우스');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (5,3,null,'이레캠핑장');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (6,3,'tjdwlrwk3123@naver.com','이레캠핑장');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (3,2,'kaka','여우와달펜션');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (4,2,'kaka','어린왕자 펜션');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (7,3,'tjdwlrwk3123@naver.com','글램핑클럽레스피아');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (8,3,'tjdwlrwk3123@naver.com','새연카라반리조트');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (9,4,'tjdwlrwk3123@naver.com','빙고호스텔 CASA');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (10,4,'tjdwlrwk3123@naver.com','모꼬지');
Insert into FINAL.ACCOM_SERVICE (ACCOM_SERVICE_NUMBER,CATE_NUMBER,USER_ACCOM_BOSS_NAME,ACCOM_NAME) values (12,4,'tjdwlrwk3123@naver.com','더메이 하우스');

Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (0,0,'해장금',2,4,90000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (1,0,'토끼방',2,5,100000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (2,3,'글램핑',2,4,69000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (3,3,'별채(독채)',2,3,69000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (4,3,'커플동',2,4,69000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (5,4,'꽝꽝',2,2,48000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (6,4,'바오밥',2,4,75000,10);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (7,4,'미루',2,8,85000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (8,6,'하우스글램핑',2,4,100000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (9,6,'글램핑1',2,4,75000,10);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (10,6,'글램핑2',2,4,75000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (11,7,'복층형글램핑',2,4,48000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (12,7,'카바나글램핑',2,4,58000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (13,7,'카바나글램핑2',2,4,58000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (14,8,'신축-감성글램핑-1',2,4,79000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (15,8,'신축-감성글램핑-2',2,4,79000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (16,8,'신축-오페라글램핑-1',2,4,76000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (17,8,'신축-오페라글램핑-2',3,6,80000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (18,9,'C-2인실',2,2,50000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (19,9,'D-2인실',2,2,50000,10);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (20,9,'E-2인실',2,2,50000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (21,10,'바깥채',1,2,90000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (22,10,'건너채',1,3,140000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (23,10,'안채',1,6,230000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (24,10,'모꼬지 독채',13,17,495000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (25,12,'디럭스 싱글 (1인실)',1,1,80000,10);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (26,12,'디럭스 트윈',2,2,80000,0);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (27,12,'프리미엄 쿼드 테라스',4,4,150000,5);
Insert into FINAL.ACCOM_OPTION (ACCOM_OPTION_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_ROOMS_OPTION,ACCOM_MIN_PEOPLE,ACCOM_MAX_PEOPLE,ACCOM_PRICE,DISCOUNT) values (28,12,'프리미엄 패밀리',5,5,230000,10);

Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (0,0,'[이용팁]
ㅁ 전망
- 시티뷰
ㅁ 주변 관광시설
-삼청동길,인사동, 창덕궁, 경복궁, 운현궁
ㅁ 조식서비스
-한국식 떡국 또는 아메리칸스타일 택일
ㅁ체험활동
- 다도및 다식 만들기(1시간 1만원)
- 한복입고 사진촬영하기(20분 무료)
- 붓글씨 써보기등 다양한 체험(20분 1만원)','
[추가요금]
ㅁ 기준인원 외 1인 추가시 2만원의 추가요금 발생(현장결제)

[예약안내]
ㅁ 펜션연락처는 예약과 동시에 고객님의 휴대폰으로 자동발송됩니다.
ㅁ 예약 전 취소수수료를 꼭 확인바랍니다.

[이용시 주의사항]
ㅁ 무분별한 오락, 음주 및 고성방가등으로 인하여 다른 투숙객에게
피해시에는 강제 퇴실조치 됩니다.
ㅁ 이용시 시설물 훼손, 분실에 대한 책임은 투숙객에게 있으므로 유의
하시기 바랍니다.

[예약 및 이용 시 주의사항]
ㅁ실시간예약 특성상 간혹 예약이 중복될 수 있으며, 바로 연락드려 전액환불 도와드리겠습니다.
ㅁ이용불가 안내를 받았을 경우 직접 취소 시 수수료가 발생하니 고객센터로 연락바랍니다.
ㅁ예약변경 시 고객센터로 연락바라며, 업체규정에 따라 변경이 불가하거나 수수료가 발생할 수 있습니다.
ㅁ고객 연락처 오기재로 인해 연락이 불가할 경우, 예약이 자동취소 될 수 있습니다.
ㅁ단순변심, 고객사정으로 인한 취소 시 취소환불수수료가 적용됩니다.
ㅁ추가인원요금이 예약 시 결제되지 않을 수 있으며, 이 경우 현장결제 부탁드립니다.
ㅁ최대인원 초과 입실 시 입실 및 환불이 불가합니다.

ㅁ늦은 입실 시 업체에 사전연락 부탁드립니다.
ㅁ업체 물품의 파손 및 분실 시 업체기준으로 변상하셔야 합니다.
ㅁ반려동물 전용 업체가 아닌 경우 반려동물 동반 시 입실이 제한될 수 있습니다.
ㅁ당일예약 후 당일이용건일 경우 이용이 불가할 수 있으니 업체에 사전확인 부탁드립니다.
ㅁ보호자를 동반하지 않은 미성년자만 입실 시 입실 및 환불이 불가합니다.
ㅁ사전예약취소 없이 사용하지 않은 예약건에 대해서는 환불이 불가합니다.

ㅁ부대시설 및 객실비품은 업체 상황에 따라 변동될 수 있습니다.
ㅁ업체 이미지는 실제와 상이 할 수 있습니다','- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 14:00 ~ 체크아웃 11:00','카페,편의점','조식');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (1,3,'자연이 살아 숨쉬는 곳! 여우가 달을 사랑할때펜션에 오신걸 환영합니다.
맑은 옹달샘이 있는 여우가 달을 사랑할때 펜션은 자연이 살아있는 곳 입니다. 대금산이 바로 뒤에 있고, 산림욕을 즐길 수 있는 산책로가 펜션옆으로 있으며, 특히 대금산 등산로가 바로 뒤로 있어 자연속에서 편히 쉬고픈 분들에게 아주 좋은 장소 입니다. 객실별 넓은 테라스에서 바라보이는 천경은 마음을 시원하게 해주고 밤이면 밤하늘의 별빛이 가슴에 와 닿는 객실은 따스한 휴가처가 되어 드립니다. 남이섬 가까워 더욱 좋고 강촌리조트가 있어 겨울철 스키를 즐길 수 있는 곳! 여우가 달을 사랑할때 펜션에 오시면 따스한 마음으로 모시겠습니다.','펜션즐기기
★이벤트★
· 일출보기 이벤트 - 일출 인증샷 찍어 오시면 소정의 선물을 드립니다.
· 여우찾기 이벤트 - 펜션 글램핑장 외곽에 숨어 있는 여우 아홉마리를 찾아 인증샷을 찍어 오시면 소정의 선물을 드립니다.
온수는 31도, 온수요금은 별도로 받지 않고 객실요금에 포함입니다.
특가에 따른 별도의 비용이 발생하오니 참고부탁드립니다.
예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.

최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.

반려동물 동반시 입실이 거부되며, 해당 사유로 환불 받을수 없습니다.

미성년자는 혼숙이 불가능하며, 동성일 경우 보호자 동반이나 동의가 있을 경우에만 입실이 가능합니다.

다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.

객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.

객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.

객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.

다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
','- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 15:00 ~ 체크아웃 11:00','바베큐,수영장,카페,편의점','픽업,무료주차,wifi');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (2,4,'[숙소소개]
봄엔 희망을..여름엔
즐거움을..가을엔 기억을..겨울엔 사랑을...
좋은 추억을 만들수 있는 어린왕자의 나무별에서 여러분들을 초대하고 싶습니다.고객님 한 분, 한
분 기분 좋은 여행을 위해 언제나 노력하는 나무별 펜션이 되겠습니다.감사합니다.','계곡인접
· 펜션 바로 앞 계곡이 있습니다.
· 1급수 청정수로, 계곡 깊이는 발목 정도입니다.
펜션즐기기
· 디퓨져 : 쾌적한 환경을 위해 각 객실마다 디퓨져가 있습니다.
· 화이트침구 : 지금까지, 지금도, 앞으로도 약속합니다. 매일매일 새로운 시트로 교체하여 산뜻하고 포근하고 편안한 잠자리를 제공합니다.

[주변 관광지]
· 주변관광지
· 자라섬
· 남이섬
· 가평레일바이크
· 제이드가든
· 쁘띠프랑스
· 엘리시아 강촌
· 연인산들꽃축제
· 꽃무지풀무지
· 용추계곡
· 아침고요수목원
해당
펜션은 미성년자의 경우 입실 불가하며 위반 시 환불이 불가하며
퇴실조치 됩니다.
예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.

기준인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.

최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.

반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.


다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.

객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.

객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.

객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.

다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.

실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불받을 수 있습니다. (야놀자펜션 고객센터 측에서 확인 즉시 안내드립니다.)

펜션별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.','- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 15:00 ~ 체크아웃 11:00','바베큐,수영장,유아시설,카페,온천,연회장','픽업,무료주차,보드게임,wifi');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (3,6,'[숙소소개]','[숙소안내]
입실시간 : 14:00 / 퇴실시간 : 11:00
입 퇴실 가능 시간은 일자별/객실별로 다를 수 있으니 별도 문의 부탁드립니다.
주차장의 주차 가능여부는 별도 문의 부탁드립니다.

개별바비큐
· 이용 장소 : 각 객실 개별 바비큐
· 숯+그릴 비용 : 15,000원 (2인 기준 / 현장결제)
IPTV/WiFi
· 객실에서 데이터 걱정 없이 빠르고 편리하게 인터넷을 즐겨보세요!
수영장
· 이용 장소 : 펜션 내 야외 공용 수영장
· 이용 기간 : 하절기
노래방
· 이용 장소 : 코인 노래방
바비큐장
· 이용 장소 : 각 객실 개별 바비큐
· 숯+그릴 비용 : 15,000원 (2인 기준 / 현장결제)
체육시설
· 탁구장
· 트램폴린
· 야구배팅장
레포츠
· 체험 코스 : 쿠키/피자만들기, 어린이기차, 범퍼카, 비비카트장, 영화상영
· 이용 문의 : 펜션 사전 문의 필수
주차가능
· 주차 가능한 공간이 마련되어 있습니다.
계곡인접','
- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 14:00 ~ 체크아웃 11:00','바베큐,수영장,편의점,연회장','보드게임,영화관람,반려동물동반');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (4,7,'[숙소소개]
해발 389M의 청정 자연과 공존하는 독특한 복층 글램핑
1.서울에서 40분! 주말에도 부담없이 떠나는 여행
2.해발 389M의 청정 자연과 공존하는 글램핑
3.텐트에도 복층이 있다! 1, 2층 모두 사용하는 복층형 글램핑에서 만드는 이색만점 추억
복층형 고급 글램핑을 합리적인 가격에 선보이는 클럽 레스피아. 서울에서 약 40분만 차를 타고 달리면 해발 389m 청정 지역에서, 자연과 하나되는 글램핑 클럽 레스피아를 만나실 수 있습니다. 클럽 레스피아의 복층형 텐트 안에서 1, 2층을 이용하시면 자연이 주는 공기가 대류하면서, 겨울에는 따뜻하고 여름에는 시원한 캠핑이 가능합니다. 자연이 주는 포근하고 쾌적한 선물을 가평 클럽 레스피아에서 느껴보세요.','[숙소안내]
입실시간 : 15:00 / 퇴실시간 : 11:00
입 퇴실 가능 시간은 일자별/객실별로 다를 수 있으니 별도 문의 부탁드립니다.
주차장의 주차 가능여부는 별도 문의 부탁드립니다.

개별바비큐
-바베큐그릴세트(2만원) : 숯1,번개탄1,철망1,가스토치,숯집게,장갑,비닐봉투(롤백)
-화로대세트(2만원) : 장작1,가스토치,장갑,숯집게,비닐봉투(롤백)
-바베큐그릴+화로대세트(3만5천원) : 숯1,번개탄1,철망1,가스토치, 숯집게, 장갑, 비닐봉투(롤백)
-추가장작1망(1만5천원) : 옵션구매 후 추가장작 구매 시
*옵션은 현장구매 가능*
복층
· 아동,유아 동반 시 안전에 유의하시길 바랍니다.

수영장
성인풀과 유아풀 개장
수영모 착용 필수이며 별도의 이용 요금은 발생되지 않습니다

매점/편의점

주차가능
주차가능
펜션즐기기
· 공용 개수대시설,공용 화장실/샤워실
· 난방기 유상 대여 (25,000원)
· 추운 겨울, 아이들을 위해 실내에 마련된 따뜻한 실내놀이방
· 양손 가벼운 여행을 즐길 수 있도록 구비된 매점
· 마음껏 뛰어놀 수 있는, 드넓은 잔디마당
· 신나게 뛰어놀 수 있는 야외놀이터
· 사시사철 온수가 나오는 공용샤워장
· 언제든지 편하게 이용 가능한 공용개수대
· 언제나 깨끗한 공용화장실
★ 당일 예약 당일 이용 고객께서는 반드시 070-7719-6891로 이용가능 확인 후 예약진행해 주시기 바랍니다
★ 카카오톡 플러스친구 응답이 가장 빠릅니다: 검색창에 클럽 레스피아 검색 후 친구추가★ 모든 객실은 날짜변경이 불가능하오니 취소 및 환불규정 필히 확인 후 구매부탁드립니다★ 예약시 환불기준을 숙지하시고 예약하시기 바랍니다.• 기준인원 초과시 1인 10,000원 (현장결제/추가인원 있을 경우 예약 후 업체측으로 연락 필수)','- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 15:00 ~ 체크아웃 11:00','바베큐,수영장,편의점,탁구장','무료주차');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (5,8,'[숙소소개]','기준인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.

최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.

반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.

숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.

다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.

객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.

객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.

객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.

다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.

실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불받을 수 있습니다. (야놀자펜션 고객센터 측에서 확인 즉시 안내드립니다.)

펜션별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.

*안내사항*-애완동물입실 불가 !  애완동물입실 시 환불 없이 퇴실 조치 되오니, 부득이한 일이 발생되지 않도록 이점 많은 협조 바랍니다.-객실 체크인(오후3시) 전, 체크아웃(오전11시) 후에는 수영장 및 모든 부대시설물 이용은 불가 하오니, 이점 많은 양해 바랍니다.-매너타임 10시 이후 무질서 , 고성방가시 퇴실 조치 될 수 있습니다.
-지역 소음민원 관계로 저녁 8시이후엔 폭죽사용을 금하오니, 이에 많은 협조바랍니다.','- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 15:00 ~ 체크아웃 11:00','바베큐,수영장,온천,족구장,탁구장','픽업,무료주차,wifi');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (6,9,'[시설개요]
객실내 무료 Wi-Fi

[업체소개]
ㅁ 연남동에 위치한빙고호스텔 CASA 입니다.

[부대시설]
ㅁ 무선 인터넷','
[입,퇴실안내]
ㅁ 입실시간 16:00 / 퇴실시간 12:00
ㅁ 퇴실 시 퇴실점점 부탁드립니다.
ㅁ 12시부터 15시까지 청소시간이므로 원활한 운영을 위해 시간을 꼭 지켜주세요

[인원추가요금]
ㅁ 각 객실마다 정해진 최대수용인원(영유아포함) 초과를 엄격히 금하며, 예약된 인원외에는 펜션에 입실 할 수 없습니다

[예약안내]
ㅁ 업체연락처는 예약과 동시에 고객님의 휴대폰으로 자동발송됩니다
ㅁ 예약 전 취소수수료를 꼭 확인바랍니다
[이용 주의사항]
ㅁ 객실 예약 현황은 실시간 예약 특성상 100% 일치하지 않을 수 있습니다
경우에 따라 중복예약이 발생할 수 있으며, 이 경우 먼저 결제된 예약 건이 우선 예약됩니다
ㅁ 객실 및 기타시설물은 다른 사용자를 위해서 깨끗이 사용해 주시기 바랍니다
ㅁ 다른 이용 고객의 불편함이 없도록 무분별한 오락, 음주 및 고성방가를 자제하여 주시기 바랍니다
ㅁ 쾌적하고 안락한 펜션 운영 방침에 따라 최대정원 이상의 입실은 금합니다
ㅁ 화재 및 냄새로 인한 타 손님 배려 차원에서 객실 내 돼지고기, 생선, 청국장등의 조리를 금하오니 실외 지정된 장소 및 바비큐장을 이용하시길 부탁드립니다
ㅁ 이용 시 시설물에 대한 책임은 투숙객에게 있으므로 유의하시기 바랍니다
ㅁ 이용자의 귀중품 분실시 책임은 이용자에게 있으니 관리 부탁드립니다
ㅁ 시설물 훼손, 파손 시에는 펜션지기에게 알려주시기 바랍니다
ㅁ 객실 내에서는 금연입니다
ㅁ 애완동물은 부득이 타 객실 및 손님을 위해 입실을 금하오니 양해바랍니다
ㅁ 미성년자는 보호자의 동행 없이는 투숙이 불가합니다
ㅁ 퇴실시 음식물을 비롯한 모든 쓰레기는 분리수거해 주시고, 사용하신 주방기구는 세척해 주시기 바랍니다
ㅁ 객실 정리 후 퇴실점검을 받으셔야 합니다. 점검 후 객실 키를 반납해 주세요
[ 구매 후 예약 상황에 따라 예약 불가 및 예약 취소가 될 수 있습니다. 구매 후 반드시 펜션으로 예약 확정 여부 확인을 부탁드립니다. (이로 인한 사유로 인한 취소 시, 예약 당일이라도 100% 환불이 가능하며, 그 외 보상은 불가하오니 반드시 예약 확정 여부 확인을 부탁드립니다. ]
','
- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 16:00 ~ 체크아웃 12:00
','카페,편의점','무료주차,wifi');
Insert into FINAL.ACCOM_INFO (ACCOM_INFO_NUMBER,ACCOM_SERVICE_NUMBER,ACCOM_INFO_CONTENT,ACCOM_HOW,ACCOM_RULE,ACCOM_CHEKINFO,FACILITY,CONVEN) values (7,12,'[숙소소개]
젊은과 낭만,쉼이 있는 곳
화려한 서울의 아름다움과 자연 속의 편안한 휴식을 둘 다 만끽할 수 있는 호텔, 도심 속 휴양지를 모토로 시작한 저희 호텔은 장충동에 위치한 “더메이 포레스트빌”을 시작으로 두 번째 호텔인 “더메이 하우스” 를 젊음의 거리인 홍대입구에 마련하게 되었습니다. 아름다울美의 중국어 더메이라는 이름처럼 아기자기하고 아름다운 정원이 돋보이는 곳으로 BBQ 시설, 객실 테라스 등 다양한 즐길 거리를 준비해 두어 연인부터 가족 단위의 여행객들 모두가 즐길 수 있는 공간입니다. 아기자기한 정원과 테라스와 함께 현대적인 장식으로 꾸며진 ‘더메이 하우스’는 도심 속의 힐링을 주제로 체크인부터 안락한 호텔식 서비스와 단독주택 특유의 안락함 모두 담고자 노력했습니다. 또한 3층까지 이어진 세련된 복도와 계단, 호텔내부에는 갤러리와 같은 느낌의 모던한 복도와 현대식 장식들로 꾸며져 있으며 객실은 아늑하고 고급스러운 느낌의 실내공간으로 구성되어 있습니다. 특히 정원을 갖춘 만큼 작은 텃밭과 바베큐 시설이 준비 되어 있으며 도심과 차단된 한적한 휴양지에서 문만 열고 나가면 곧바로 느껴지는 서울 도심의 화려한 멋까지 ‘더메이 하우스’에서만 느낄 수 있는 특유의 즐거움이 있습니다. 젊음과 낭만, 예술과 언더그라운드 문화, 개성 넘치는 자유의 거리로 대변되는 홍대입구 인근에 위치해 있어 홍대의 이색카페들, 예술시장, 각종 맛집 등을 관광하기에 편리합니다.','[부대시설]
· 전 객실 무료 WiFi 이용 가능합니다.
예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.

최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.

반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.

미성년자는 혼숙이 불가능하며, 동성일 경우 보호자 동반이나 동의가 있을 경우에만 입실이 가능합니다.

다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.

객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.

객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯, 전기/전열기구 등)은 반입이 금지되어 있습니다.

객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.

다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.
','
- 체크인 6일 전 : 취소 수수료 없음
- 체크인 5일 전 : 취소 수수료 10%
- 체크인 4일 전 : 취소 수수료 20%
- 체크인 3일 전 : 취소 수수료 30%
- 체크인 2일 전 : 취소 수수료 50%
- 체크인 1일 전 : 취소 수수료 70%
- 체크인 당일 : 취소 수수료 100%','체크인 15:00 ~ 체크아웃 11:00','카페','조식,wifi');

Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (53,'남산타워홍보1.PNG','b2d8f923-00fc-4dde-b4d3-8fe6775b62cb_남산타워홍보1.PNG',1,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (170,'에버홍보1.jpg','178df9fe-f6b3-40dc-b748-78e5cb0cd131_에버홍보1.jpg',5,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (171,'에버홍보2.jpg','c36ce060-945d-4f3b-9096-394923d8a55f_에버홍보2.jpg',5,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (172,'에버홍보3.jpg','36235a57-008f-47f0-836b-a3b03438495c_에버홍보3.jpg',5,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (173,'에버홍보4.jpg','5561bc69-406d-48a5-ac8b-fe6d8bc89b9f_에버홍보4.jpg',5,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (174,'에버홍보5.jpg','c238f1d7-d116-4df5-b1c3-80b322029cc9_에버홍보5.jpg',5,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (90,'쉐프클래스3.PNG','2fda8a2c-8dd4-45a3-8c48-21b4127a0a84_쉐프클래스3.PNG',8,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (43,'가로수길3.PNG','d37fc846-73bf-4635-895d-ef9199587843_가로수길3.PNG',11,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (93,'이탈리아가정식2.PNG','3557388f-bb5e-4d88-a38e-b02606aabb4b_이탈리아가정식2.PNG',21,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (94,'이탈리아가정식3.PNG','6f6c248e-98ab-4475-a8c4-d3e54f3bce15_이탈리아가정식3.PNG',21,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (41,'가로수길1.PNG','c1b18a8d-72e0-4673-a2ad-c069cc441689_가로수길1.PNG',11,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (42,'가로수길2.PNG','e5ed54f8-3d7b-4efb-8581-e74c3e086cc4_가로수길2.PNG',11,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (88,'쉐프클래스1.PNG','49a38b21-0709-438f-bfda-cf55e26f37fe_쉐프클래스1.PNG',8,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (89,'쉐프클래스2.PNG','81afb77e-d35b-48a3-b569-02778ef7838c_쉐프클래스2.PNG',8,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (48,'구스홍보3.PNG','f43aa2de-edad-4689-a679-4c6fc48b3a25_구스홍보3.PNG',22,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (49,'구스홍보4.PNG','ccf361f8-7b77-49bc-8da4-3ffde4e5d8c8_구스홍보4.PNG',22,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (50,'구스홍보5.PNG','93acd107-5629-4ba5-99ac-b147ec5d52ad_구스홍보5.PNG',22,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (51,'남산타워1.PNG','fe46ab80-557c-4cee-8cef-fe290a826f5f_남산타워1.PNG',1,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (52,'남산타워2.PNG','7b7c18eb-8a79-4ff4-a490-31e9b24a8cd7_남산타워2.PNG',1,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (46,'구스홍보1.PNG','9efd05c7-f313-4dba-bd0e-6f4447d00a5f_구스홍보1.PNG',22,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (47,'구스홍보2.PNG','f0fa3a86-7d50-4a9d-afaf-9ab01886cb4e_구스홍보2.PNG',22,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (91,'쉐프클래스홍보1.PNG','96b66baa-99af-42df-9794-728e46bf8576_쉐프클래스홍보1.PNG',17,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (92,'이탈리아가정식1.PNG','0777a598-06fe-4d7b-844f-396452bb944b_이탈리아가정식1.PNG',21,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (98,'도자기홍보1.PNG','9034c948-f485-4516-ad35-7d00426d9bfe_도자기홍보1.PNG',19,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (99,'아라리오1.PNG','d3868048-50b3-4df7-a0c3-eecdf8b74899_아라리오1.PNG',10,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (100,'아라리오2.PNG','fdf5a9f5-a4c0-4160-a4e9-8974a7347886_아라리오2.PNG',10,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (101,'경복궁1.PNG','c8531fd9-1d2c-4fb8-b4d7-3134c0172a08_경복궁1.PNG',2,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (102,'경복궁2.PNG','7d2661d5-b7c2-4f82-bf38-cb20b84f2ee2_경복궁2.PNG',2,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (103,'경복궁홍보0.jpg','e27e1208-de02-461c-bfa7-49ef7c9df3a3_경복궁홍보0.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (104,'경복궁홍보2.jpg','1791d6f4-9a29-4745-933d-fcd20a2b31fa_경복궁홍보2.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (105,'경복궁홍보3.jpg','b0b343f7-cf7d-4fcb-b581-2980001ece39_경복궁홍보3.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (106,'경복궁홍보4.jpg','8d07cac3-648e-4d77-80ca-d4fb7d7a3f7f_경복궁홍보4.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (107,'심쿵1.jpg','c73b65d6-970d-43de-8383-5b160c8288c0_심쿵1.jpg',3,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (108,'심쿵홍보1.jpg','5387f2b8-9d1b-43b9-8e2b-2fece1bdbdc9_심쿵홍보1.jpg',3,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (109,'심쿵홍보2.jpg','5e63dd4b-c11b-44e2-ac1d-43918b778afb_심쿵홍보2.jpg',3,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (110,'심쿵홍보3.jpg','23b66028-7f5c-4fec-95a7-a8af60935a87_심쿵홍보3.jpg',3,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (111,'심쿵홍보4.jpg','33de8e27-05e5-47d2-8b9e-45d6dd059535_심쿵홍보4.jpg',3,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (112,'남산타워후기1.PNG','남산타워후기1.PNG',1,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (113,'남산타워후기2.PNG','남산타워후기2.PNG',1,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (114,'경복궁후기1.PNG','경복궁후기1.PNG',2,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (115,'남산타워후기2.PNG','남산타워후기2.PNG',16,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (116,'남산타워후기3.PNG','남산타워후기3.PNG',6,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (117,'경복궁후기3.PNG','경복궁후기3.PNG',12,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (118,'경복궁후기2.PNG','경복궁후기2.PNG',7,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (119,'심쿵후기4.PNG','심쿵후기4.PNG',13,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (120,'심쿵후기1.PNG','심쿵후기1.PNG',8,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (121,'심쿵후기2.PNG','심쿵후기2.PNG',3,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (122,'심쿵후기3.PNG','심쿵후기3.PNG',36,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (123,'한강유람선후기1.PNG','한강유람선후기1.PNG',14,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (124,'한강유람선후기2.PNG','한강유람선후기2.PNG',4,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (125,'한강유람선후기3.PNG','한강유람선후기3.PNG',9,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (126,'에버랜드후기1.PNG','에버랜드후기1.PNG',28,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (127,'에버랜드후기2.PNG','에버랜드후기2.PNG',10,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (128,'에버랜드후기3.PNG','에버랜드후기3.PNG',15,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (129,'에버랜드후기4.PNG','에버랜드후기4.PNG',30,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (130,'육삼후기1.PNG','육삼후기1.PNG',23,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (131,'육삼후기2.PNG','육삼후기2.PNG',22,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (132,'육삼후기3.PNG','육삼후기3.PNG',17,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (133,'롯데후기1.PNG','롯데후기1.PNG',18,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (134,'롯데후기2.PNG','롯데후기2.PNG',24,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (135,'쿠킹후기1.PNG','쿠킹후기1.PNG',19,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (136,'쿠킹후기2.PNG','쿠킹후기2.PNG',25,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (137,'도자기후기1.PNG','도자기후기1.PNG',20,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (138,'아라리오후기1.PNG','아라리오후기1.PNG',21,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (139,'아라리오후기2.PNG','아라리오후기2.PNG',27,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (140,'도자기1.PNG','ab3cbfaf-db81-4ce8-a403-3ad193d3a5ce_도자기1.PNG',9,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (141,'도자기2.PNG','1651c65b-94df-4090-9b57-3761ba505b28_도자기2.PNG',9,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (142,'도자기3.PNG','59ea3374-7833-487c-9da0-b27257a2b06d_도자기3.PNG',9,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (143,'도자기홍보1.PNG','c7e98bdf-7587-46fb-8b7d-9110ef0f82f6_도자기홍보1.PNG',9,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (144,'롯데1.PNG','4bde415c-d749-4458-a2a9-d3367b6faca1_롯데1.PNG',7,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (145,'롯데홍보1.PNG','85b9a7c8-95c4-4c18-a65f-972cc80fdc9c_롯데홍보1.PNG',7,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (146,'롯데홍보2.PNG','66d22ce7-64dc-4cdf-b8a9-2bcfc85822a3_롯데홍보2.PNG',7,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (147,'롯데홍보3.PNG','068d1beb-420d-4417-a3fc-5752c1f44dcf_롯데홍보3.PNG',7,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (148,'롯데홍보4.jpg','b7448dfe-d83a-47df-ad3d-28074aba2f4b_롯데홍보4.jpg',7,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (149,'롯데홍보5.jpg','e32eef0c-41a3-43d1-9965-f056feea169e_롯데홍보5.jpg',7,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (150,'강남구스1.PNG','e3f881ac-cc84-46e5-96e6-7c328f5015c7_강남구스1.PNG',13,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (151,'강남구스2.PNG','02098096-1dd0-4fa3-ba6b-008c018b0775_강남구스2.PNG',13,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (152,'강남구스3.PNG','96c4a557-df9c-4d4e-9610-523188c3b30c_강남구스3.PNG',13,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (153,'구스홍보1.PNG','938a423c-7c81-456a-8ebc-32724d484bba_구스홍보1.PNG',13,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (154,'구스홍보2.PNG','aef3528e-670e-4c90-978c-02c63d3eb269_구스홍보2.PNG',13,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (155,'구스홍보3.PNG','25bcf9b1-9167-416b-a1ec-26c5bf5ebe3d_구스홍보3.PNG',13,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (156,'구스홍보4.PNG','f4699e27-cc8e-455b-b34d-867d2f4db506_구스홍보4.PNG',13,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (157,'구스홍보5.PNG','d22b4237-3892-49b5-af52-9de4af12bc8e_구스홍보5.PNG',13,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (158,'육삼1.PNG','cf457d1e-0de2-4cc1-9ac5-a7046bda9208_육삼1.PNG',6,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (159,'육삼홍보1.PNG','b4829c5d-32da-4089-bd76-441d7f3f82c2_육삼홍보1.PNG',6,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (160,'육삼홍보2.PNG','fdbccba5-04b2-4393-862f-9da614f216f0_육삼홍보2.PNG',6,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (161,'육삼홍보3.jpg','628da314-0297-4180-b54b-0251635e6956_육삼홍보3.jpg',6,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (162,'육삼홍보4.jpg','94049f9e-db46-44f7-97d7-86d883e9b3e1_육삼홍보4.jpg',6,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (163,'육삼홍보5.jpg','6a608078-59f5-4027-9a24-e40bca4d6642_육삼홍보5.jpg',6,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (164,'유람선홍보1.jpg','9f13fb9b-28d0-458a-9e68-5e74f43b7943_유람선홍보1.jpg',4,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (165,'유람선홍보2.jpg','a1199827-ea7d-48ff-809c-b63bd26000a6_유람선홍보2.jpg',4,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (166,'유람선홍보3.jpg','b855b6a7-8d75-4da9-ac85-c8af31269797_유람선홍보3.jpg',4,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (167,'유람선홍보4.jpg','bd434d4b-f2c7-4a0c-9173-374551f8b100_유람선홍보4.jpg',4,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (168,'유람선홍보5.jpg','67421160-da71-4fe0-a49f-b20139d5e597_유람선홍보5.jpg',4,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (169,'에버1.PNG','5e1a4635-914d-4e56-a499-fcc649352191_에버1.PNG',5,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (175,'펜1.jpg','74ff2580-018b-4741-983e-962391601bc1_펜1.jpg',0,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (176,'펜2.jpg','0aec7857-43b6-48f4-9d2c-e866b4e1ea3c_펜2.jpg',0,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (177,'펜3.jpg','f39355d4-0869-4f8f-9676-435a693a4383_펜3.jpg',0,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (178,'펜2.jpg','4c608e30-4e29-4bd5-aece-53adc5785053_펜2.jpg',0,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (179,'펜2.jpg','68738dee-8217-43e1-a62c-fad25731dc72_펜2.jpg',1,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (180,'펜2-2.jpg','5bc56e15-a102-40cc-8402-eb8beb45469c_펜2-2.jpg',3,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (181,'펜2-1.jpg','39084f27-cc46-4960-a1bf-031b816e587f_펜2-1.jpg',3,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (182,'펜2-5.jpg','b839e9f1-bb2e-4ed7-ae18-8e64292e50d3_펜2-5.jpg',3,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (183,'펜2-10.jpg','1d9941d6-40ed-47c0-981e-3779b00b5477_펜2-10.jpg',3,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (184,'펜2-9.jpg','3e91a071-bdad-465f-b961-941b4fbda30e_펜2-9.jpg',2,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (185,'펜2-6.jpg','c908eda8-6bcf-448b-97a3-b097cc4dab3d_펜2-6.jpg',3,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (186,'펜2-7.jpg','bec03430-5123-473d-8c30-a82dd98afc41_펜2-7.jpg',3,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (187,'펜2-3.jpg','2972ae32-9aa8-4000-a397-8fafebecc294_펜2-3.jpg',4,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (188,'펜2-4.jpg','28a6ae89-f04d-45c5-a205-41c5064ca78f_펜2-4.jpg',4,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (189,'펜3.jpg','117d9fa4-faa7-4a1f-a4a2-9aca0293f42a_펜3.jpg',4,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (190,'펜3-5.jpg','b28ffb5f-33d4-4ed2-ab2f-b462e6355a55_펜3-5.jpg',4,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (191,'펜3-6.jpg','e94dc5fd-aeb8-4131-bf2c-cf9308234f75_펜3-6.jpg',4,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (192,'펜3-1.jpg','f6c0ece5-97fb-4fad-89a4-f3f8594110f1_펜3-1.jpg',4,2);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (193,'펜3-8.jpg','736aae34-7c6b-4e58-b76c-91e4a104e7e0_펜3-8.jpg',5,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (194,'펜3-2.jpg','d3faaa0b-cb0b-4cdc-95df-a5a319c2a80b_펜3-2.jpg',5,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (195,'펜3-7.jpg','6ef95d8a-1caa-4ed0-b93b-dd6850141a18_펜3-7.jpg',6,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (196,'펜3-4.jpg','44c9a081-e043-42f4-ac1f-22d8e690c63c_펜3-4.jpg',6,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (197,'펜3-3.jpg','03a55c58-5c92-4e6d-82f5-25c72c8cb746_펜3-3.jpg',6,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (198,'펜3-9.jpg','324e160c-a5aa-4db5-9b33-c93dd749582a_펜3-9.jpg',7,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (199,'펜3-1.jpg','70399ce7-ef00-44d6-8f7d-31dc88c14898_펜3-1.jpg',7,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (200,'펜3-5.jpg','5f6ceeba-ba1c-468f-a081-9023d8e67285_펜3-5.jpg',7,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (201,'펜3-4.jpg','be5d3abe-0fee-4a00-b44f-db7d1fa79784_펜3-4.jpg',7,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (202,'캠1.jpg','3bc4183b-e751-43bd-bf73-bab721abf6c8_캠1.jpg',6,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (203,'캠1-1.jpg','802314db-5023-48a8-8a07-0ae3d890b038_캠1-1.jpg',6,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (204,'캠1-3.jpg','c542d258-903f-4279-8a81-f4f8c881dd68_캠1-3.jpg',6,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (205,'캠1-5.jpg','2174d2c0-dea5-49b5-8a8c-6f16dfec22be_캠1-5.jpg',6,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (206,'캠1-6.jpg','bfcc9990-bf43-4a4f-bcf3-b32fc2d503f4_캠1-6.jpg',6,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (207,'캠1-4.jpg','00f6d247-bcf9-4888-966a-089ea187e0d8_캠1-4.jpg',8,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (208,'캠1-8.jpg','48d7124c-af39-4ab7-a1ec-357a2516447c_캠1-8.jpg',8,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (209,'캠1.jpg','d7f87e02-b2e8-4c36-9e26-45810df39a95_캠1.jpg',8,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (210,'캠1-7.jpg','1a0a6f33-74ca-43fe-bd20-85a2d4b0f69c_캠1-7.jpg',9,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (211,'캠1-9.jpg','009e57eb-93fb-4305-be3b-e488c8b864f1_캠1-9.jpg',9,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (212,'캠1-1.jpg','3921b88f-ce74-4289-84da-a8f36522ec72_캠1-1.jpg',9,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (213,'캠1-1.jpg','8ac34046-47c3-4ec4-ab61-22fc7313773b_캠1-1.jpg',10,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (214,'캠1-8.jpg','c10dc398-781e-4b64-92c8-ac78881edcc9_캠1-8.jpg',10,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (215,'캠1-9.jpg','e95c63b9-d1ec-4b1b-8ef8-97b1a2393fb8_캠1-9.jpg',10,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (216,'캠1-10.jpg','ba1d57c7-982f-445b-8800-b3886c0f97ee_캠1-10.jpg',10,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (217,'캠2.jpg','33762171-614b-4091-88f2-83134c2e8ccb_캠2.jpg',7,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (218,'캠2-1.jpg','c5035563-86c9-415e-82bb-c4fcf503c545_캠2-1.jpg',7,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (219,'캠2-2.jpg','5d5b6d68-d229-4656-9ee1-3c5b445f5d68_캠2-2.jpg',7,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (220,'캠2-3.jpg','127ae94a-0c08-4238-a05a-2d61c38d2b8a_캠2-3.jpg',7,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (221,'캠2-4.jpg','3f66478b-005a-4e9b-972a-ff003b83889f_캠2-4.jpg',11,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (222,'캠2-5.jpg','0bfdff42-34ce-4e3c-a1f0-be13650301bc_캠2-5.jpg',11,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (223,'캠2-5.jpg','ac6693a2-852b-4fa9-a8b3-9923359a8e8d_캠2-5.jpg',12,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (224,'캠2-6.jpg','f59b4bc2-93f5-4c96-b2ac-48393e19615b_캠2-6.jpg',12,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (225,'캠2-6.jpg','69040b2a-2381-4be5-911f-f44cd5be1e95_캠2-6.jpg',13,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (226,'캠2-7.jpg','425d6154-8950-4fe7-8a72-4cf77171c1ad_캠2-7.jpg',13,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (227,'캠2-5.jpg','aa5e4616-edfd-4c79-9436-926a92a5a03c_캠2-5.jpg',13,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (228,'캠3.jpg','e4a38316-d240-48b0-8cc2-27778b7402d3_캠3.jpg',8,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (229,'캠3-1.jpg','af335f7d-cfc6-46b9-b677-0f6871513864_캠3-1.jpg',8,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (230,'캠3-2.jpg','abcd2d7c-c364-41af-860c-ed20be36943a_캠3-2.jpg',8,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (231,'캠3-3.jpg','6ce55d63-3ba4-486c-aa47-f483f74fb218_캠3-3.jpg',8,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (232,'캠3-7.jpg','5d48e5de-ea80-4413-abe3-e25953bac06a_캠3-7.jpg',8,3);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (233,'캠3-4.jpg','5a037ad1-4822-4972-b7ca-f21e41e9b203_캠3-4.jpg',14,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (234,'캠3-5.jpg','a682cdaa-56b1-4108-8474-c51b57b7d542_캠3-5.jpg',14,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (235,'캠3-6.jpg','3695cd91-3a2b-4bf4-8d76-0c4952d8cb8c_캠3-6.jpg',14,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (236,'캠3-4.jpg','9efb04ad-06ec-4058-8ace-7588f5c1d6af_캠3-4.jpg',15,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (237,'캠3-5.jpg','806856bf-fe37-4d99-a185-74943a6f54b3_캠3-5.jpg',15,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (238,'캠3-6.jpg','988453ea-27fd-4d78-a8ad-fd4699403e61_캠3-6.jpg',15,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (239,'캠3-8.jpg','b155a9c8-e89b-4a50-97bc-9e225da547cb_캠3-8.jpg',16,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (240,'캠3-9.jpg','1d3710a9-a157-463b-a04f-d991ae4ba57d_캠3-9.jpg',16,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (241,'캠3-11.jpg','d527ec68-d21b-4c97-b7f2-9497c9b8c714_캠3-11.jpg',16,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (242,'캠3-10.jpg','79bef88e-e1dd-4a5a-9716-aad1db046dde_캠3-10.jpg',16,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (243,'캠3-8.jpg','1b9522a0-4237-43ba-88be-e4b603faa993_캠3-8.jpg',17,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (244,'캠3-10.jpg','1c319365-2d0c-4599-ba75-40de1d9a7397_캠3-10.jpg',17,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (245,'캠3-9.jpg','ac6c65b6-daf7-4162-b611-5c2c5c183ef8_캠3-9.jpg',17,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (246,'캠3-11.jpg','e9b22214-f127-44f8-bc3b-48f492e2256d_캠3-11.jpg',17,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (247,'게1-7.jpg','10fc4013-113b-43e6-ad9c-57942da9189d_게1-7.jpg',9,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (248,'게1.jpg','7c8c19c8-4094-48a6-8e51-333f53b65b0c_게1.jpg',9,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (249,'게1-1.jpg','b3c47353-420f-4161-b956-5072ae2f7a24_게1-1.jpg',18,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (250,'게1-3.jpg','4ecc7dd7-6fcf-4117-8a5e-b41e96a510c0_게1-3.jpg',18,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (251,'게1-4.jpg','50f41d37-0f7a-4ab3-a24b-4b2470e611c1_게1-4.jpg',19,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (252,'게1-5.jpg','85a4e3ae-2fc2-4943-89cc-99c5fd1d257c_게1-5.jpg',19,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (253,'게1-6.jpg','3bb6bee0-b031-4d3b-abbb-9d5562b39272_게1-6.jpg',19,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (254,'게1.jpg','18b2d57d-57da-48cf-a65a-e866344e52ee_게1.jpg',20,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (255,'게1-1.jpg','671f83fa-d3a0-4043-9439-b2f7523cdfd9_게1-1.jpg',20,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (256,'게2.jpg','5f36c549-7dbd-4508-8834-a9608f4117ed_게2.jpg',10,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (257,'게2-1.jpg','2e33bda1-bcef-4a91-a6bf-e5380f541e14_게2-1.jpg',10,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (258,'게2-2.jpg','ada1e34b-d7e2-4899-866d-e1ab87d1f315_게2-2.jpg',10,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (259,'게2-3.jpg','af3cb6f2-0f3c-489a-93e4-bf5b942d369f_게2-3.jpg',21,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (260,'게2-4.jpg','624ee8dd-ccaf-4247-a5b7-71e34bd7f899_게2-4.jpg',21,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (261,'게2-5.jpg','f3646b92-476b-486f-927b-56dd28b96b9f_게2-5.jpg',22,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (262,'게2-8.jpg','6579744e-1521-42b7-9334-0d450624c607_게2-8.jpg',22,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (263,'게2-3.jpg','0e5c85f4-f108-4eaf-97ce-c301c77115e2_게2-3.jpg',22,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (264,'게2-6.jpg','0816fe34-fb2d-4cbf-8559-ef11318c8038_게2-6.jpg',23,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (265,'게2-3.jpg','fe61bf90-f5bb-4537-a30b-359153300718_게2-3.jpg',23,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (266,'게2-5.jpg','fdae84ff-1256-44dc-b012-0b9360563dc3_게2-5.jpg',23,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (267,'게2-8.jpg','455f5137-d257-4519-9c68-f456fc5677e8_게2-8.jpg',23,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (268,'게2.jpg','db6865a7-3688-4a4a-90ed-2ea61fd3f446_게2.jpg',24,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (269,'게2-2.jpg','1c8494b4-804b-4f5c-803b-28da279670ed_게2-2.jpg',24,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (270,'게2-3.jpg','14b81663-7d7e-49fb-857d-e90353d46337_게2-3.jpg',24,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (271,'게2-5.jpg','13b42975-5a63-4c42-afc0-78ad5fa315c0_게2-5.jpg',24,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (272,'게3.jpg','8556f02e-6899-4f1c-a438-abc861f38917_게3.jpg',12,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (273,'게3-3.jpg','d466a8ca-0e62-4e89-8b73-33afb78cff0a_게3-3.jpg',12,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (274,'게3-4.jpg','662616b0-9cd2-4998-9944-361406a411ff_게3-4.jpg',12,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (275,'게3-5.jpg','5404eb0f-637f-48d5-8903-438f2ba5fb48_게3-5.jpg',12,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (276,'게3-6.jpg','460b3a3e-e812-4dc3-9c9f-b8817f3c79ef_게3-6.jpg',12,4);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (277,'게3-1.jpg','e315a3ee-d46a-4416-9c36-d61ed38c6672_게3-1.jpg',25,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (278,'펜2-7.jpg','a37e5f2f-2a34-4f9f-bb80-bb0ff716f74c_펜2-7.jpg',25,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (279,'게3-2.jpg','d6311e05-68d8-409a-bc38-9fd09755b7b5_게3-2.jpg',26,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (280,'게3-8.jpg','9f1c6cbe-ad24-41f1-ad56-18e30a0e8ece_게3-8.jpg',26,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (281,'펜3-2.jpg','d9d32677-5be4-48d7-9990-af5c1e9a2628_펜3-2.jpg',26,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (282,'게3-7.jpg','c2ac3076-b263-4873-a26f-a7aa7161ab61_게3-7.jpg',27,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (283,'게3-1.jpg','7c52a97b-7232-4819-b930-76bc3b223060_게3-1.jpg',27,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (284,'펜3-1.jpg','e437fd1a-a09a-4aa4-999a-fcad1aa451f6_펜3-1.jpg',27,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (285,'게3-1.jpg','9129de11-2436-4c6d-a5fd-a1bee7ab7c61_게3-1.jpg',28,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (286,'게3-2.jpg','95897a11-1f71-4d41-809d-e187c8e4b207_게3-2.jpg',28,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (287,'게3-8.jpg','309eb9e2-6332-4d29-9165-0d1020f5d23c_게3-8.jpg',28,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (288,'펜3-7.jpg','8d52dc20-af22-40d4-a62c-41f435caef6e_펜3-7.jpg',28,555);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (289,'펜3-8.jpg','76a2ad1a-aafa-4fa2-ba01-d026dfd5a336_펜3-8.jpg',28,555);

Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (3,2,'포함사항
경복궁 티켓 및 소정의 간식거리

경복궁을 관람하며 한국의 정취를 느껴본다. ','사용 방법
예약이 확정되면 참여 링크와 참여 방법을 이메일로 보내드립니다.

상품 문의는 아래 이메일 또는 전화주시면 자세히 안내드립니다.

대표번호 : 1670-8208 연결 후 ③번을 눌러주세요.
문의 가능 시간 : 월~금: 09:00-18:00 (점심시간 12:00-13:00), 공휴일&주말: 1:1 채팅 상담만 가능
E-MAIL : info@guidelive.kr

추가정보
■ 최소 진행인원 : 3명
■ 최대 진행인원 : 30명','취소 및 환불 규정
[상품 취소 및 환불 규정 안내]
- 여행시작 3일 전까지 (~3) 통보시 : 전액 환불
- 여행시작 2일 전까지 (2) 통보시 : 결제요금의 50% 공제
- 여행시작 당일까지 (1~당일) : 취소/환불 불가',to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (4,3,'The Flower hello, 심쿵 展 : 이색전시회 입니다','사용 방법
1. 최소 이용 1시간전 상품구매
2. 별도의 SMS는 전송되지 않습니다.
3. 현장 방문, 고객성함 및 휴대폰 번호 뒷 4자리 확인 후 이용
4. 상품 주문시 기재한 상품수령인 or 받으시는분 or 수취인명으로 조회 가능

※ 금액 조회 시 노출되는 본 상품의 유효기간을 반드시 확인해주시기 바랍니다.','취소 및 환불 규정
- 유효기간 내 미사용티켓 100% 환불가능
- 유효기간 후 환불불가
- 사용한 티켓은 환불 불가능합니다.',to_date('21/02/28','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (5,4,'이랜드 뮤직 크루즈
※ 상품 구매시 영업일 기준 2일 이내에 휴대폰 문자 메세지로 모바일 쿠폰이 발송 됩니다.
※ 별도의 사전 예약 없이 이용하시는 경우 만석으로 이용이 어려울 수 있으니, 식사권 사용처에 사전 유선 예약 진행을 권장합니다.

2월 운항일자 안내 (총 9일)
- 매주 토-일 : 6일, 7일, 20일, 21일, 27일, 28일
- 설연휴 추가 운항 : 12일, 13일,14일


▶티켓 예약 방법
- 캘린더에서 이용 일자와 인원 그리고 옵션을 선택해 주세요.
- 예약 후 영업일 기준 2일 이내에 예약 페이지 URL이 담긴 문자 메시지가 발송됩니다.
- 예약 확정 후 별도로 보내드리는 문자에서 자세한 사항을 꼭 확인해주시기 바랍니다.','사용 방법
[사용 정보]
- 사용장소 : 이랜드 크루즈 이랜드 크루즈
- 유효기간 : 2021-01-08 ~ 2021-02-28
- 해당 상품은 매수 제한없이 사용 가능합니다.
- 반드시 1일전 사전 예약 후 이용 가능합니다.
- 소인기준 : 36개월 ~ 만 12세 (36개월 미만은 무료)
- 주차안내 : 해당 상품 이용 시, 한강 여의도 제 1주차장 종일 무료 혜택
- 운영시간 : 토~일 19:30~ (70분 운항)

* 예약권 이용안내
해당 상품은 온라인 예약이 필수인 예약 필수 상품입니다.
예약없이 방문 시, 테이블 및 메뉴 등 사전에 준비되지 않아 이용이 불가 합니다.
반드시 쿠폰 구매 시 발송되는 모바일쿠폰을 통해 온라인 예약을 진행해 주세요.
예약 확정 문자 수신 후 매장에 방문하셔야 합니다.
예약 및 예약 확정 문자 없이 방문한 경우에는 이용이 불가 합니다.
자세한 이용 문의는 고객센터로 연락 주세요. (1600-3662 / 09:00~12:00)

* 온라인 예약 이용방법
1. 구매 후 예약 페이지 URL이 담긴 문자 메시지를 수신합니다.
2. URL(날짜 지정하기) 클릭 하여 예약 페이지로 이동 합니다.
(e쿠폰함의 경우 추가안내링크에 있는 URL을 통해 예약페이지로 이동합니다. )
3. 사용할 쿠폰을 선택 후 이용하실 날짜와 시간을 선택합니다.
4. 예약 신청 후 예약완료 문자를 받습니다. (매장에 따라 최대 1일 소요)
5. 매장 방문 후 예약완료 문자와 고객님의 성함을 말씀해주세요.','취소 및 환불 규정
- 구매 후 90일 이내 취소 요청 시, 100% 환불됩니다.
- 구매 후 90일 이후 취소 요청 시, 구매 금액의 90%가 환불됩니다.
- 최초 유효기간이 만료된 경우 유효기간 연장을 신청하실 수 있습니다.
- 단, 현재 같은 가격과 구성으로 동일한 상품이 판매되고 있는 경우에만 가능 합니다.
"최초 유효기간 이란?" 상품구매 시 최초로 부여되는 유효기간 (연장 이후 기간 제외)
',to_date('21/04/30','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (9,8,'단 2시간만에 파스타 장인이 되어보세요!
특급호텔 한식당 총괄셰프 출신 셰프의 요리꿀팁을 전수 해드립니다!

**양의공간 원데이클래스 특장점**
- 수강생님의 니즈와 수준에 맞춰 기본기, 야매요리부터 고급요리까지 맞춤클래스로 진행됩니다!
- 기본커리큘럼도 있지만 다른 클래스도 다양하게 준비되어 있습니다 :)
- 원하시는 수업방향에 맞춰 1:1수업도 가능합니다.
- 어색하고 낯선 분위기는 NO!! 편안하고 재밌는 분위기로 이해하기 쉽게 설명해드려요 :)
- 우리집 주방에서 할 수 있는 메뉴, 그에 맞는 조리기구, 접시, 담음새까지 모두 알려 드립니다!

**수업메뉴**
파스타 4종 중 택2
(수업시간은 2시간입니다.)

1. 토마토파스타
토마토라구소스를 만드는법과 그를 이용한 곱창라구파스타를 알려드립니다!

2. 크림파스타
생크림+우유 는 no!
제대로 된 크림파스타 레시피를 알려드립니다!

3. 오일파스타
파스타의 정석!
문어가 들어간 알리오에뽈뽀 메뉴와 함께 오일파스타의 정석을 알려드립니다!

4. 바질페스토파스타
색감도 좋고 맛도좋은데 너무너무 간단한!
바질페스토를 만드는법과 응용메뉴까지 알려드립니다!','이용 안내
만나는 시간
기본수업시간은 월요일 제외 매일 12시, 15시 이며 사전협의 후 조정 가능합니다!

만나는 장소
양의공간

필수 안내
- 요리하기에 너무 불편한 옷은 피해주세요!
- 반드시 마스크 착용 후 참여해 주시기 바랍니다.','취소 및 환불 규정
* 유효기간 내 미사용티켓 100% 환불가능
* 유효기간 종료 후 미사용티켓 100% 환불
* 사용한 티켓은 환불 불가능합니다.',to_date('21/03/16','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (2,1,'서울의 대표 랜드마크 N서울타워를 방문해보세요!
※ 본 상품은 e-voucher 상품으로 ''예약 내역''에서 확인되는 바우처를 모바일 또는 출력본으로 제시해주시면 됩니다.
(여행 확인증이 아닌 영어로 된 바우처를 지참하셔야 합니다)

[ 이 티켓의 매력 포인트! ]
- 서울의 대표 랜드마크 입니다.
- 연인과 자물쇠를 채우고 달콤한 소원을 빌어보세요!
- ''빛의 갈대''와 ''빛의 샤워''를 비롯한 다양한 쇼를 선보입니다.
- 헬로키티와 함께 하는 세상에서 가장 행복한 N서울타워 여행을 떠나보세요.
- 마블 캐릭터도 N서울타워에서 볼 수 있어요!

서울의 랜드마크 빌딩! 236.7m 높이의 N서울타워는 국내에서는 남산타워로 더 익숙하죠. 1969년 남산의 정상에 방송 송신탑으로 만들어졌다가 1980년부터 전망대가 꾸며져 일반인들에게 개방되었어요. 2005년에 보수 공사를 마치고 현재의 이름인 N서울타워로 이름을 변경했답니다. ‘N’은 남산의 첫 글자와 ‘새로운’ 것을 의미해요.

N서울타워는 N로비, N플라자, N타워 등 세 부분으로 구분되는데 N플라자는 2층으로 구성되어 있으며 N타워는 4층으로 구성되어 있어요. 디지털 전망대, 옥상 테라스, 이벤트 홀, 레스토랑, 기념품샵 등 다양한 시설들이 많아서 여행객 뿐만 아니라 데이트 장소로도 인기 만점인 곳이랍니다.

남산타워의 트레이트 마크, 옥상 테라스 자물쇠! 남산타워에 왔다면 반드시 하고 가야할 필수 스팟이랍니다. 연인과 자물쇠를 채우고 달콤한 소원을 빌어보시는 것도 놓치지 마세요!
','사용 방법
1. 예약이 완료되면 예약 확정 이메일을 발송해 드립니다.
2. 무인발권기에 QR코드 스캔 후 입장권으로 교환해주세요.
- 입장권 교환 장소: N서울타워 N Plaza P0층 (전망대 지하)
- 교환 시간: 10:00 - 21:30
- 입장 시간: 일요일-금요일 10:00 - 23:00, 토요일 10:00 - 24:00
- 교통: 2번, 3번, 5번 남산순환버스를 이용하세요. (07:00 - 23:20 사이, 15분 간격으로 운행)

추가정보
[유의사항]
- 여행확인증이 아닌, 영어로 된 바우처를 지참하셔야 합니다.
- 상품페이지와 바우처의 정보가 다를 경우, 반드시 바우처의 정보를 확인 부탁드립니다.

[기타 안내]
- 여행자 보험에 가입 후 투어를 진행할 것을 권장합니다.
- 성인권은 만 3세 이상에 해당합니다.
- 만 2세 이하 유아 무료 입장가능합니다.','- 본 상품은 상품특성상 부득이하게 별도의 취소 환불 약관이 적용됩니다.
- 본 상품은 확정 이후 취소 및 환불이 불가하오니 신중한 구입 부탁 드립니다.',null);
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (12,13,'크래프트 맥주와 음식이 함께하는 도심 속 음식 공방!
※ 상품 구매시 영업일 기준 2일 이내에 휴대폰 문자 메세지로 모바일 쿠폰이 발송 됩니다.
※ 쿠폰이 발송된 시점부터 금액권 사용이 가능합니다.
※ 사전 예약 후 이용 가능합니다. (02-6205-1785)

[식사권 매력 포인트]
셰프가 조리해주는 치킨과 맥주로 사랑하는 사람과의 시간을 즐겨보세요

[운영시간]
- 월-수 / 전시간대 - 11:30 ~ 24:00
- 목-토 / 전시간대 - 11:30 ~ 01:00
- 일요일 / 전시간대 - 11:30 ~ 23:00','이용 시간
월-수 / 전시간대 - 11:30 ~ 24:00 목-토 / 전시간대 - 11:30 ~ 01:00 일요일 / 전시간대 - 11:30 ~ 23:00','- 본 상품은 상품 특성상 별도의 취소 환불 규정이 적용됩니다.
- 상품 구매 후 7일 이내 취소 시 100% 환불 처리 됩니다.
- 상품 구매 후 7일 이후에는 취소 및 환불이 불가하오니 신중한 구매 부탁드립니다.
- 변경 및 환불 요청은 영업일 기준으로 처리 됩니다. (공휴일 및 토, 일요일 제외)
- 남은 잔액은 유효기간 내 사용 가능합니다.
- 유효기간 내 액면가의 60%이상 사용 시, 잔액이 환불 됩니다.',null);
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (6,5,'에버랜드 얼리버드 할인권!','사용 방법
* 판매기간 : ~2021-03-18
* 유효기간 : 2021-02-01 ~ 2021-03-18
※ 이용 당일 구매 불가

* ※ 감염병 예방 및 관리 목적으로 에버랜드 입장 및 실내/식음 시설 이용 시
* APP이용권 스캔이 필요합니다.(입장 전 에버랜드APP에 이용권 등록 바랍니다.)
* APP미사용 시 일부 시설의 예약/탑승이 제한될 수 있습니다.

* ※ 입장 시 37.5도 이상이거나 마스크 미착용 고객은 입장이 불가합니다.

* ※ 일부 놀이기구 스마트줄서기 안내
- (사전예약필수/ 매진되어 조기 마감될 수 있는점 참고 바랍니다.) : https://bit.ly/3m82tY6

1. 상품구매
2. 문자로 QR 코드 수신
3. 수신받은 MMS 상단에 보여지는 QR코드를 에버랜드 App에 등록 후
* 에버랜드 정문에서 제시 후 입장
* ※ QR코드가 없으면 입장이 불가하오니 입장 전 우측 "예매티켓교환처"에서 꼭 확인 바랍니다.
* (응대 가능시간: ~18시)

추가정보
* 사파리월드 휴장안내 : 2/22(월) ~ 2/24(수)
* (단, 휴장 기간이 변경될 수 있으므로 자세한 운영시간은 에버랜드 app 참조바랍니다.)
* 대/소 공통 이용 가능하며 36개월부터 요금 적용됩니다.
* 방문일지정 예약상품으로 지정한 날짜에 이용 가능합니다.
* 당일 에버랜드 입장 및 가동중인 시설 이용 가능합니다.
* (단, 코인물/대여물/스페셜투어/기획전 등 별도 요금)
* 일부 어트랙션/동물원/식당 이용시간은 에버랜드 마감시간과 다르게 조기
종료될수 있으니 사전에 에버랜드 모바일 앱에서 운영시간 확인 바랍니다.
* 정문주차장은 유료, 외곽주차장은 무료로 운영됩니다.
* QR코드의 사진을 판매사이트에 그대로 올리는 경우 제3자의 무단 도용에
따른 피해가 발생할 수 있습니다.


※ 에버랜드 http://www.everland.com

[업체정보]
* 업체정보 : 에버랜드
* 업체주소 : 경기도 용인시 처인구 포곡읍 전대리 310 (에버랜드로 199)
* 업체문의 : 031-320-5000 (운영시간 09:00~18:00)
* 영업시간 : 에버랜드 홈페이지 참고(홈페이지 : www.everland.com)
* 휴 무 : 휴무없음
* 무료입장나이 : 36개월 미만 (증빙서류 지참 필수/미지참시 유아요금적용)','취소 및 환불 규정
* 유효기간 내 미사용티켓 100% 환불가능
* 유효기간 종료 후 미사용티켓 100% 환불
* 사용한 티켓은 환불 불가능합니다.',to_date('21/04/12','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (7,6,'사용 방법
[구매 및 이용방법]
① 티켓 구매시 권종과 수량 선택 후 휴대폰 번호를 정확히 입력해주세요.
② 구매 후 여행자님의 휴대폰으로 카카오알림톡을 발송해드립니다. 알림톡은 구매 1시간 이후 발송됩니다.
* 통신사별로 바코드티켓 수령시간에 다소 차이가 있을 수 있습니다.
③ 매표소 방문 없이 관람장 입구에서 카카오알림톡에 포함된 URL을 클릭 후, 바코드 이미지를 제시해주세요.

추가정보
[유의사항]
- 수량 변경시에는 구매 전체 취소 후, 재구매 하셔야 합니다.
- 복수 구매시 부분취소/환불은 불가합니다.
- 발권 후에는 부분취소/환불이 불가합니다.
- 이용시 모바일티켓 및 신분증 반드시 지참 바랍니다.
- 애완동물은 입장이 불가합니다.
- 아쿠아플라넷 내부 기념촬영은 가능하며, 생물들의 안전을 위해 플래시 사용은 불가합니다.
- 36개월 미만의 유아는 무료입장입니다. (의료보험증 또는 기타 증빙서류 지참)
- 경로(만 65세 이상) 확인을 위해 경로우대증, 주민등록증을 반드지 지참해주세요.
','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','취소 및 환불 규정
- 본 상품은 상품 특성상 부득이 하게 별도의 취소 환불 약관이 적용됩니다.
- 유효기간 내 미사용 티켓 : 환불 100% 가능
- 유효기간 이후 : 환불 불가
- 사용하신 티켓은 환불이 불가합니다.',null);
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (8,7,'롯데월드 패밀리 자유이용권 (종일/AFTER4)','사용 방법
1. 상품결제
2. 구매후 1시간 이내 QR코드 발송
3. 롯데월드 게이트에서 카카오알림톡 내 QR코드 바로입장
4. 롯데월드 즐기기!

추가정보
[유의사항]
- 퇴장 후 재입장은 불가합니다.
- 게이트 입장 후 지류티켓 교환은 불가합니다.
- QR코드 캡처 이미지로는 입장이 제한될 수 있습니다.
- 게이트바로입장(유인,무인매표소 이용불가).
- QR코드 이용 전 핸드폰 색상 반전 설정 해제 부탁드립니다.
(색상 반전 설정 시 QR코드 인식 불가 합니다.)
- 제 3자에게 구매한 티켓은 이용 및 환불이 제한 됩니다. ex)중고나라, 번개장터에서 구매

[패밀리권 안내]
- 패밀리 종합이용권 : 어른1 + 어린이 1

[연령정보]
- 어른 : 14세 이상 / 어린이 : 36개월~13세 이하
- 만36개월 미만의 유아는 증빙서류 지참 시 무료입장의 혜택을 받으실 수 있습니다.
(단, 무료입장에 대한 혜택이며 놀이시설 이용시 별도의 요금이 부과됩니다.)

[업체 정보]
- 업체명 : 롯데월드 어드벤처
- 문의전화 : 02-1661-2000
- 서울특별시 송파구 올림픽로 240(잠실3동 40-1)

[주차안내]
※ 7월 21일부로 주차 시스템 개선이 되었습니다.
1) ~ 3시간 무료
2) 3시간 ~ 1,000원/10분 (최대 3,000원)
- 자세한 사항은 롯데월드 어드벤처 공식 홈페이지에서 확인 부탁드리겠습니다.

[기타안내]
- 이용 시간은 현장 상황에 따라 상이할 수 있으며 방문 전 롯데월드 홈페이지에서 이용 시간 확인 해주시기 바랍니다.
- 기상현상으로 인해 일부 놀이기구의 운영이 중단될 수 있는 점 양해 바랍니다.
- 외국인 여행객은 이용이 불가능합니다.
- 외국인 거주자의 경우 관련 증명서(외국인등록증,외국인 학생증 등)를 제시해주시기 바랍니다.
- 이용 시간은 현장 상황에 따라 상이할 수 있으며 방문 전 롯데월드 홈페이지에서 이용 시간 확인해주시기 바랍니다.
- 기상 현상 등 현장 상황에 따라 일부 놀이기구 운영이 중단될 수 있는 점 참고 바랍니다.
- 36개월 미만 유아는 나이를 확인할 수 있는 증빙 서류를 지참해주시면 무료입장이 가능합니다.
(단, 무료입장에 대한 혜택이며 놀이시설 이용 시 별도의 요금이 부과됩니다.)
- 재판매로 인한 모든 법적인 문제는 해당 시설 및 판매사에서 책임지지 않습니다.','취소 및 환불 규정
- 티켓 교환 후 취소는 절대 불가합니다.
- 취소/환불은 구매일 기준 7일 이내 환불 가능하며 구매하신 사이트로 접수해주시기 바랍니다.
- 본 티켓은 부분 취소/부분 환불이 절대 불가합니다.(유효기간 내 모두 사용 권장)',null);
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (10,9,'오직 리브모아에서만! 세라믹 파스텔로 도자기 위에 신비로운 색감을 표현하는 수업입니다.
리브모아 도예 공방에서 직접 개발한 도자기 기법을 이용하여 선택한 도자기에 색감을 입히는 수업입니다.
도자기용 파스텔을 체에 긁어 가루를 만들어서 뿌리는 방식으로 기존에 도예체험을 해보신 분들도 처음 접해보실 수 있는 독특한 기법입니다.
초보자분이나 아이들도 쉽고 재미있게 예쁜 접시를 만드실 수 있습니다.','상품 정보
포함 사항
선택한 접시 1개 + 금장식

불포함 사항
주차 불가
택배비 (착불)
여행자 보험
개인 경비

이용 안내
이용 시간
주말(토&일), 공휴일 오전 10시 30분 / 오후 1시 / 오후 3시 30분에 예약 가능합니다. // 2인 이상 신청 시 주말&공휴일 정규수업 외에 평일 원하시는 날짜와 시간에 수업 개설이 가능합니다.

사용 방법
- 원하시는 상품 구매 후 사전에 예약 확인 메시지를 보내주시기 바랍니다.
- 수업 준비가 필요하므로 당일 예약이 힘드실 수 있습니다. 꼭 사전에 문의 주세요.
- 현장 이용 시 구매자분 성함을 알려주세요.


** 꼭 읽어주세요! **

[예약 및 변경]
- 예약제로 수업이 진행됩니다. (시간 및 날짜 사전 예약 필수)
- 단체예약 가능 (사전 문의 필수)
- 동시 수용 인원: 최대 8~10명

[이용 안내]
- 수업 시간: 1시간 15분 ~ 1시간 30분
- 수업에 필요한 모든 재료가 제공됩니다. 즐거운 마음만 준비해주세요 :)
- 보태니컬 사각 접시는 칼을 이용하는 과정이 있어 어린이(만 5세~13세)는 물고기 접시 만들기가 좋습니다.
- 외부 인원과 함께 수업이 진행될 수 있습니다. 예약 시간을 꼭 준수해주세요.
- 반드시 마스크를 착용하신 후 참여해주시기 바랍니다.

[수령 안내]
- 수업 후 만드신 작품은 가마에서 2번 구워야 하므로 약 한 달 간의 소요 시간이 필요합니다.
- 완성 후 개별 연락드리며, 방문 수령 또는 택배 수령(착불)이 가능하며 가급적 방문 수령을 권합니다.
- 택배 이용 시 파손 면책 동의를 하셔야 발송이 가능합니다.
- 핸드메이드 도자기 특성 상 작은 반점, 요철 및 유약 말림 등 의 현상이 있을 수 있습니다.','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',null);
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (11,10,'보존과 창조의 미학을 담은 미술관 ''아라리오뮤지엄''
[상품 안내]
- 보존과 창조의 미학을 담은 미술관 ''아라리오뮤지엄''
- 서울과 제주에 위치한 아라리오뮤지엄은 기존 건물의 역사적 가치를 보존하고 현대 미술의 문화적 가치를 더한 새로운 공간 경험을 추구합니다.
- 사무실, 영화관, 모텔 등으로 사용되었던 기존 건물들은 과거의 기억들 사이로 현대미술의 창조성이 스며들어 과거와 현재가 교차하는 매력적인 문화 공간으로 재탄생하였습니다.

[관람 포인트]
- 옛 건물의 이야기를 간직하다.
- 작품과 공간, 그리고 관객의 운명적 만남

[운영시간]
- 10:00~19:00 (마지막 입장 18:00)
*아라리오뮤지엄은 매주 월요일 휴관입니다.','사용 방법
이용 안내
- 예약 후 자동 확정되며, 현장 매표소에서 확인 후 수령 바랍니다.
- 예약내역의 예약번호 (EQ 7자리)를 현장에서 제시해주세요.
- 구매 후 반품/환불은 반드시 마이리얼트립 고객센터를 통해 문의바랍니다.

추가정보
[운영시간]
-인 스페이스(화-일) 10:00~19:00 (마지막 입장 18:00)
*아라리오뮤지엄은 매주 월요일 휴관입니다.
*서울 아라리오뮤지엄 인 스페이스는 코로나바이러스감염증-19 확산 방지를 위해 회차 당 30명으로 관람 인원을 제한하여 운영함을 알려드립니다.


[가이드 여부 안내]
*코로나바이러스감영증-19 확산방지 차원으로 도슨트 투어는 진행하지 않습니다.
*오디오 가이드 (한,영) 가능
*홈페이지: http://www.arariomuseum.org/main.php

[구정 연휴 기간 휴관 안내]
▶ 아라리오뮤지엄 인 스페이스 (서울) : 2/11(목) – 2/12(금), 총 2일','취소 및 환불 규정
- 회차별 30명 인원제한이 있는 상품으로 별도의 취소/환불 규정이 적용됩니다.
- 미사용 티켓에 한하여 취소/환불이 가능합니다. (부분 취소/환불 적용 불가)
- 이용일 하루 전까지 접수된 예약건에 한하여 100% 환불 가능합니다.
- 이용일 당일 취소/환불 불가합니다.',to_date('21/03/02','RR/MM/DD'));


Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (1,1,'test','남산타워 전망대','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (2,1,'test','경복궁구경','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (3,1,'test','The Flower hello, 심쿵 展 : 이색전시회 입장권','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (4,1,'test','D랜드 크루즈','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (5,1,'test','에버랜드 종일이용권 (2/20~4/12)','테마파크');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (6,1,'test','아쿠아플라넷63','테마파크');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (7,1,'test','롯데월드 패밀리 자유이용권 (종일/AFTER4)','테마파크');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (8,1,'test','특급호텔 총괄셰프가 알려주는 수제파스타 원데이클래스','취미/클래스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (9,1,'test','햇살을 닮은 신비로운 색감, ''파스텔 도자기 원데이 클래스''','취미/클래스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (10,1,'test','아라리오뮤지엄 인 스페이스 입장권','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (11,1,'test','가로수길 맛집투어','맛집');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (13,1,'test','구스아일랜드','맛집');

Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (2,2,1,'경복궁 투어[가이드]',15000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (3,2,2,'경복궁 투어[가이드+기념품]',20000,9999,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (4,3,1,'심쿵 전시 입장권',10000,10,15);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (5,4,1,'[야간] 성인',25000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (6,4,2,'[야간] 소인',17000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (7,4,3,'[야간] 성인 커플권',47000,0,15);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (8,5,1,'[평일한정] 에버랜드 종일권',27000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (9,5,2,'에버랜드 종일권',29000,9999,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (10,6,1,'[상시] 아트입장권',12000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (11,6,2,'[상시] 대인입장권',20000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (12,6,3,'[상시] 소인입장권',16800,0,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (13,6,4,'[상시] 대인종합권',24000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (14,6,5,'[상시] 소인종합권',20800,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (15,7,1,'종일 2인 패밀리 종합이용권(어른1+어린이1)',60000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (16,7,2,'After 2인 패밀리 종합이용권(어른1+어린이1)',49000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (17,8,1,'쿠킹클래스 예약권',70000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (18,9,1,'통통 물고기 접시 만들기',35000,9999,15);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (19,9,2,'보태니컬 사각 접시 만들기',35000,9999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (20,9,3,'긴 물고기 접시 만들기',38000,9999,20);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (21,10,1,'[성인] 아라리오뮤지엄 인 스페이스 입장권 (10시)',15000,999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (22,10,2,'[성인] 아라리오뮤지엄 인 스페이스 입장권 (12시)',15000,999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (23,10,3,'[성인] 아라리오뮤지엄 인 스페이스 입장권 (14시)',15000,999,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (24,10,4,'[성인] 아라리오뮤지엄 인 스페이스 입장권 (16시)',15000,889,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (25,10,5,'[성인] 아라리오뮤지엄 인 스페이스 입장권 (18시)',15000,1909,5);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (26,10,6,'[성인] 아라리오뮤지엄 인 스페이스 입장권 (20시)',15000,999,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (27,11,1,'스페인+이탈리안',50000,500,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (28,11,2,'이탈리안',30000,333,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (29,13,1,'치킨+비어샘플러',25000,999,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (0,1,1,'오후권[12:00~17:00]',12000,9997,0);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (1,1,2,'야간권[17:00~21:00]',15000,9997,15);

Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (1,'kaka',1,5,'너무 즐거운 관람이었습니다',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (2,'kaka',2,5,'너무너무 재밌었어요. 또오고 싶어요 !! 좋은 시간보내게 해주셔서 감사합니다!',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (3,'kaka',3,4,'행복한 주말 보내고 갑니다!직원들이 너무 친절했어요!',null,null,1,to_date('21/02/01','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (4,'kaka',4,1,'너무 친절했어요! 또올게요!',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (5,'kaka',5,3,'이제야 이곳을 알게 되었다니!! 친구와 재방문하겠습니당!!',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (11,'test',1,4,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ 남자친구가 너무 좋아해요 !! 강추!',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (12,'test',2,3,'여기 데리고와줬다고 여자친구가 고맙다구 하네요. 덕분에 평화로운 데이트 했습니다',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (13,'test',3,5,'2주년 기념으로 왔는데 대.만.족',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (14,'test',4,3,'처음와서 우물쭈물하고 있었는데 직원들이 친절하게 도와주셔서 너무 감사했습니다',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (15,'test',5,3,'부모님 모시고 왔는데 너무 좋아하시네요 감사합니다',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (16,'test',1,4,'아이들이랑 놀기 좋아요~',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (17,'test',6,4,'아이들이 너어무 좋아하네요 뿌듯한 하루 보내고 가요 ~',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (18,'test',7,3,'날씨 좋고 ~ 분위기 좋고~ 행복',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (19,'test',8,2,'다 좋았는데,, 위생에 조금만 더 신경써주세요',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (20,'test',9,5,'왜 이제야 여길 알게 되었을까여.. 또올게요 ㅠㅠ',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (21,'test',10,4,'완전대박',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (22,'admin',6,4,'남들에게 알려주기 싫은 .... 나만알면 안될까여..',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (23,'admin',6,1,'여러모로 별로였습니다. 직원분들은 저희가 왔는데 신경도 안쓰고 사람은 많고 북적거리고 시끄럽고 위생도 그렇게 깨끗한지 모르겠네요.. 간만에 불쾌한 경험하게 되어 1점 주고 갑니다..',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (24,'admin',7,3,'그냥저냥 그럭저럭~.',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (25,'admin',8,3,'뭐 이정도 가격에 이정도면 not bad~',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (26,'admin',9,5,'기대 안하고 왔다가 감동먹고 갑니다..',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (27,'admin',10,3,'적당히 시간때우기엔 딱임',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (28,'admin',5,1,'돈이 아깝네요.. 다신 이용안할래요..',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (29,'admin',3,5,'이.보.다.더.좋.을.순.없.다.',null,null,1,to_date('21/02/11','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (30,'admin',5,1,'진짜 돈 다시 돌려달라고 ㅜㅜ 이게 뭐냐고오.,. 웨이팅만 1시간이라고 ,,',null,null,1,to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_IMAGE,REVIEW_COMMENT,CATE_NUMBER,REVIEW_DATE) values (31,'admin',5,1,'음.. 이건 아니다 싶었어요 ^^',null,null,1,to_date('21/02/22','RR/MM/DD'));

--여러번 반복해서 집어넣어야 제약조건 걸린상태로 다시 들어가고 할거에요.