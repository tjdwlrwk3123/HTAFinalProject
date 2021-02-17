insert into category values(1,'투어');
insert into category values(2,'펜션');
insert into category values(3,'캠핑');
insert into category values(4,'게스트하우스');
insert into category values(5,'기타');
insert into category values(11,'투어리뷰');
insert into category values(111,'투어디테일');
insert into category values(55,'숙소리뷰');
insert into category values(555,'숙소디테일');

insert into user_info values('ck','1234','테스트','bronze','tjdwlrwk3123@naver.com','서울시','01074253618',1,2200,1);

insert into accom_info values(1,1,'좋은 호텔\n입니다.\n많이들 와주세요','독채펜션\n
· 프라이빗한 객실에서 사랑하는 가족이나 친구와 함께 행복을 찾아보세요.\n
복층\n
· 아동,유아 동반 시 안전에 유의하시길 바랍니다.\n
독채객실\n
· 프라이빗한 객실에서 사랑하는 가족이나 친구와 함께 행복을 찾아보세요.\n
· 독채 객실: 버치힐동, 통나무동, 스톤힐동, 올리브동, 벚꽃동','유의사항','체크인/체크아웃시간체크','바베큐장,수영장,카페,편의점','wifi,조식서비스');
insert into accom_info values(2,2,'b호텔좋은호텔','호텔소개?','유의사항','체크인/체크아웃시간체크','수영장,온천,탁구장','wifi,금연,보드게임');
insert into accom_info values(3,3,'c호텔텔','호텔소개?','유의사항','체크인/체크아웃시간체크','유아시설,탁구장,연회장','wifi,반려동물동반,무료주차');

insert into accom_service values(1,2,'양기홍','a호텔','서울시 양천구 월정로9길');
insert into accom_service values(2,2,'기','b호텔','부산광역시');
insert into accom_service values(3,2,'홍','c호텔','제주도');

--같은 방이 세개씩 있다고 가정하고 복붙
insert into accom_option values(1,1,'스위트룸',1,4,40000,null);
insert into accom_option values(2,1,'일반실',1,4,20000,null);
insert into accom_option values(3,1,'비즈니스',1,4,30000,null);
insert into accom_option values(4,2,'스위트룸',2,5,80000,null);
insert into accom_option values(6,2,'비즈니스',2,5,45000,null);
insert into accom_option values(7,3,'일반',1,3,22000,null);
insert into accom_option values(8,3,'고급',1,3,40000,null);

insert into accom_option values(9,1,'스위트룸',1,4,40000,null);
insert into accom_option values(10,1,'일반실',1,4,20000,null);
insert into accom_option values(11,1,'비즈니스',1,4,30000,null);
insert into accom_option values(12,2,'스위트룸',2,5,80000,null);
insert into accom_option values(13,2,'비즈니스',2,5,45000,null);
insert into accom_option values(14,3,'일반',1,3,22000,null);
insert into accom_option values(15,3,'고급',1,3,40000,null);

insert into accom_option values(16,1,'스위트룸',1,4,40000,null);
insert into accom_option values(17,1,'일반실',1,4,20000,null);
insert into accom_option values(18,1,'비즈니스',1,4,30000,null);
insert into accom_option values(19,2,'스위트룸',2,5,80000,null);
insert into accom_option values(20,2,'비즈니스',2,5,45000,null);
insert into accom_option values(21,3,'일반',1,3,22000,null);
insert into accom_option values(22,3,'고급',1,3,40000,null);

insert into accom_book values(1,'aa',1,'a호텔','2021-02-04','2021-02-05',null,null,null,null,null);
insert into accom_book values(2,'bb',2,'a호텔','2021-02-05','2021-02-08',null,null,null,null,null);
insert into accom_book values(3,'aa',2,'a호텔','2021-02-08','2021-02-09',null,null,null,null,null);
insert into accom_book values(4,'cc',9,'a호텔','2021-02-04','2021-02-07',null,null,null,null,null);
insert into accom_book values(5,'dd',4,'b호텔','2021-02-09','2021-02-10',null,null,null,null,null);
insert into accom_book values(6,'ck',8,'c호텔','2021/02/18','2021/02/20','결제완료',40000,3000,null,null);


update accom_book set payment_condition='결제완료';
update accom_book set payment_condition='결제취소' where accom_book_number=5;

insert into review values(1,'dd',2,4,'굿','1.png',null,2);
insert into review values(2,'ee',2,5,'굿굿','2.png',null,2);
insert into review values(3,'ff',2,1,'별로','1.png',null,2);
insert into review values(4,'dd',2,4,'굿','1.png',null,2);

insert into image values(1,'aa.png','123123de3131as23 aa.png',1,2);
insert into image values(2,'bb.png','123123de3131as23 bb.png',1,2);
insert into image values(3,'cc.png','123123de3131as23 cc.png',1,2);

insert into image values(4,'dd.png','232e3ar331dx34xa dd.png',4,555);
insert into image values(5,'aa.png','232e3ar331dx34xa aa.png',4,555);
insert into image values(6,'bb.png','232e3ar331dx34xa bb.png',4,555);
insert into image values(7,'kk.png','23xeae32ze3131 aa.png',6,555);
insert into image values(8,'zz.png','23xeae32ze3131 zz.png',6,555);
insert into image values(9,'aa.jpg','23xeae32ze3131 aa.jpg',6,555);

update accom_info set accom_how='독채펜션\n· 프라이빗한 객실에서 사랑하는 가족이나 친구와 함께 행복을 찾아보세요.\n복층\n· 아동,유아 동반 시 안전에 유의하시길 바랍니다.\n독채객실\n· 프라이빗한 객실에서 사랑하는 가족이나 친구와 함께 행복을 찾아보세요.\n· 독채 객실: 버치힐동, 통나무동, 스톤힐동, 올리브동, 벚꽃동' where accom_info_number=1;
update accom_info set accom_info_content='좋은 호텔\n입니다.\n많이들 와주세요' where accom_info_number=1;
update accom_info set accom_rule='- 체크인 6일 전 : 취소 수수료 없음\n
- 체크인 5일 전 : 취소 수수료 10%\n
- 체크인 4일 전 : 취소 수수료 20%\n
- 체크인 3일 전 : 취소 수수료 30%\n
- 체크인 2일 전 : 취소 수수료 50%\n
- 체크인 1일 전 : 취소 수수료 70%\n
- 체크인 당일 : 취소 수수료 100%\n
'
where accom_service_number=1;



Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (41,'1.png','1.png',1,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (42,'2.png','2.png',2,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (43,'3.png','3.png',2,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (44,'4.png','4.png',3,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (45,'5.png','5.png',4,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (46,'6.png','6.png',5,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (47,'7.png','7.png',6,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (48,'8.png','8.png',6,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (49,'9.png','9.png',7,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (10,'10.png','10.png',8,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (11,'11.png','11.png',9,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (12,'12.png','12.png',10,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (13,'1.png','1.png',1,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (14,'2.png','2.png',1,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (15,'3.png','3.png',1,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (16,'4.png','4.png',2,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (17,'5.png','5.png',2,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (18,'6.png','6.png',2,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (19,'7.png','7.png',3,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (20,'8.png','8.png',3,11);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (21,'남산1.PNG','남산1.PNG',1,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (22,'002.jpg','002.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (23,'003.jpg','003.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (24,'004.jpg','004.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (25,'005.jpg','005.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (26,'006.jpg','006.jpg',2,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (27,'007.jpg','007.jpg',3,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (28,'008.jpg','008.jpg',3,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (32,'3.png','3.png',1,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (29,'남산2.PNG','남산2.PNG',1,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (30,'남산3.PNG','남산3.PNG',1,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (31,'2.png','2.png',1,1);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (33,'남산4.PNG','남산4.PNG',1,111);
Insert into FINAL.IMAGE (IMG_NUM,IMGORGNAME,IMGSAVENAME,GENERAL_NUMBER,CATE_NUMBER) values (34,'남산5.PNG','남산5.PNG',1,111);

Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (41,'kaka',1,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (42,'kaka',2,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (43,'kaka',3,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (44,'kaka',4,1,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (5,'kaka',5,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (6,'ethan',1,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (7,'ethan',2,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (8,'ethan',3,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (9,'ethan',4,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (10,'ethan',5,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (11,'test',1,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (12,'test',2,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (13,'test',3,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (14,'test',4,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (15,'test',5,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (16,'test',1,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (17,'test',6,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (18,'test',7,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (19,'test',8,2,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (20,'test',9,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (21,'test',10,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (22,'admin',6,4,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (23,'admin',6,1,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (24,'admin',7,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (25,'admin',8,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (26,'admin',9,1,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (27,'admin',10,3,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (28,'admin',5,1,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (29,'admin',3,5,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (30,'admin',5,1,'아주만족',null,1);
Insert into FINAL.REVIEW (REVIEW_NUMBER,USER_ID,SERVICE_NUMBER,STAR_POINT,REVIEW_CONTENT,REVIEW_COMMENT,CATE_NUMBER) values (31,'admin',5,1,'아주만족',null,1);

Insert into FINAL.TOUR_BOOK (TOUR_BOOK_NUMBER,USER_ID,SERVICE_NUMBER,SERVICE_NAME,TOUR_STARTDATE,TOUR_ENDDATE,PAYMENT_CONDITION,TOTAL_PRICE,POINT_USEAMOUNT,COUPON_USECONDITION,PAYMENT_METHOD,BOOKERNAME,BOOKERPHONE) values (1,'ck',1,'남산타워구경',to_date('21/02/16','RR/MM/DD'),to_date('21/02/16','RR/MM/DD'),'결제완료',15000,0,null,null,null,null);
Insert into FINAL.TOUR_BOOK (TOUR_BOOK_NUMBER,USER_ID,SERVICE_NUMBER,SERVICE_NAME,TOUR_STARTDATE,TOUR_ENDDATE,PAYMENT_CONDITION,TOTAL_PRICE,POINT_USEAMOUNT,COUPON_USECONDITION,PAYMENT_METHOD,BOOKERNAME,BOOKERPHONE) values (2,'ck',1,'남산타워구경',to_date('21/02/17','RR/MM/DD'),to_date('21/03/05','RR/MM/DD'),'결제완료',59779,4221,null,'계좌이체','조동현','01095199039');

Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (2,1,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/03/05','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (3,2,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/22','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (4,3,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/19','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (5,4,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/04/01','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (6,5,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/03/05','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (7,6,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/04','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (8,7,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/10','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (9,8,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/15','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (10,9,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/18','RR/MM/DD'));
Insert into FINAL.TOUR_INFO (TOUR_INFO_NUMBER,SERVICE_NUMBER,TOUR_CONTENT,TOUR_HOW,TOUR_RULE,TOUR_EXPIRE) values (11,10,'포함 사항<br>[옵션 정보]<br>A. 클라이밍 체험권<br>- 클라이밍 슈즈 포함<br>A-1. 클라이밍 1일 체험권<br>B. 클라이밍 강습권<br>- 클라이밍 슈즈 포함<br>B-1. 클라이밍 1일 강습권','1. 티켓구매 (SMS 미전송 티켓)<br>2. 상품구매 후 전화예약 필수 (tel: 02-552-2532)<br>3. 현장방문하여 고객님 이름/전화번호 뒷4자리 확인 후 이용<br>※ 공휴일 운영여부 방문전 현장문의','- 미사용티켓 환불 가능<br>- 유효기간 이후 미사용티켓 환불 가능<br>- 사용한 티켓 환불 불가',to_date('21/02/19','RR/MM/DD'));

Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (1,1,1,'나홀로 즐긴다',10000,100,10);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (2,1,2,'여럿이 즐긴다',8000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (3,2,1,'나홀로 즐긴다',14000,0,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (4,2,2,'친구랑 즐긴다',24000,10,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (5,3,1,'나홀로 즐긴다',25000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (6,4,1,'혼밥을 즐긴다',3000,0,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (7,5,1,'홀로 외로이 즐긴다',25000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (8,5,2,'둘이 따숩게 즐긴다',20000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (9,5,3,'셋이 뜨겁게 논다',3000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (10,6,1,'그냥 논다',3000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (11,6,2,'신나게 논다',20000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (12,6,3,'내일 죽을것 처럼 논다',100000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (13,7,1,'그냥 걷기',1000,50,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (14,7,2,'손잡고 걷기',1000,20,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (15,7,3,'업혀서 가기',50000,10,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (17,8,1,'기어 가기',5000,5,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (18,8,2,'뛰어 가기',3000,5,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (19,9,1,'클라이밍',6000,11,null);
Insert into FINAL.TOUR_OPTION (TOUR_OPTION_NUMBER,SERVICE_NUMBER,TOUR_OPTION_INDEX,TOUR_OPTION,TOUR_PRICE,TOUR_AMOUNT,DISCOUNT) values (20,9,2,'오토바이',8000,25,null);


Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (1,1,'test','남산타워구경','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (2,1,'test','경복궁구경','테마파크');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (3,1,'test','종묘구경','취미/클래스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (4,1,'test','한강구경','맛집');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (5,1,'test','북한산구경','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (6,1,'test','63빌딩구경','티켓/패스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (7,1,'test','북악스카이웨이구경','테마파크');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (8,1,'test','매봉산구경','취미/클래스');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (9,1,'test','양재역구경','맛집');
Insert into FINAL.TOUR_SERVICE (SERVICE_NUMBER,CATE_NUMBER,USER_ID,TOUR_NAME,TOUR_TYPE) values (10,1,'test','강남역구경','티켓/패스');

Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('test','1234','테스트','SILVER','test@me.com','강남구','010121121122','Great',0);
Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('kaka','1234','카카','DIAMOND','kaka@me.com','강남구','01099998888','Great',10000000);
Insert into FINAL.USER_INFO (USER_ID,USER_PASS,USER_NAME,USER_GRADE,USER_EMAIL,USER_ADDR,USER_PHONE,USER_CONDITION,USER_POINT) values ('admin','1234','관리자','MANAGER','admin@me.com','강남구','01011112222','Great',100000);


commit;

select * from accom_option;


-- 날짜중복,인원수 체크
select * from accom_option left join accom_book 
on accom_option.accom_option_number = accom_book.accom_option_number
where not (accom_startdate < '2021-02-06'
AND accom_enddate > '2021-02-04') or (accom_startdate is null and accom_enddate is null)
and accom_max_people>=4;

-- 시설,서비스 체크
select * from accom_service
where accom_service_number in(
select accom_service_number from accom_service join facilities on accom_service_number=facilities.service_number and 
accom_service.cate_number=facilities.cate_number where facility in('수영장','바베큐장')
)and accom_service_number in(
select accom_service_number from accom_service join convenience on accom_service_number=convenience.service_number and 
accom_service.cate_number=convenience.cate_number where conven='wifi'
);

-- 날짜,인원수,시설,서비스 모두 체크

select * from accom_service where 
accom_service_number in(
select accom_service_number from accom_option left join accom_book 
on accom_option.accom_option_number = accom_book.accom_option_number
where not (accom_startdate < '2021-02-06'
AND accom_enddate > '2021-02-04')
or (accom_startdate is null and accom_enddate is null)
and accom_max_people>=4
)
and accom_service_number in(
select accom_service_number from accom_service join facilities on accom_service_number=facilities.service_number and 
accom_service.cate_number=facilities.cate_number where facility in('수영장','바베큐장')
)
and accom_service_number in(
select accom_service_number from accom_service join convenience on accom_service_number=convenience.service_number and 
accom_service.cate_number=convenience.cate_number where conven='wifi'
);

--테이블 수정
select * from accom_service natural join accom_info 
where facility like '%수영장%' and facility like '%바베큐장%';


update accom_book set accom_startdate='2021/02/18',accom_enddate='2021/02/20',
payment_condition='결제완료',total_price=40000,point_useamount=3000,coupon_usecondition='환영쿠폰'
where accom_book_number=6;


-- 위 쿼리에서 나온 숙소의 최소 방값을 구하기
select accom_service_number snum,min(accom_price) minp from accom_option group by accom_service_number
having accom_service_number in(1,2,3);

select min(accom_price) minP from accom_option group by accom_service_number
		having accom_service_number=2;

 


