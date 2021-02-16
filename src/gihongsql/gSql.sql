insert into category values(1,'투어');
insert into category values(2,'호텔');
insert into category values(3,'펜션');
insert into category values(4,'기타');
insert into category values(5,'리뷰');

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
insert into accom_option values(1,1,'스위트룸',1,4,40000);
insert into accom_option values(2,1,'일반실',1,4,20000);
insert into accom_option values(3,1,'비즈니스',1,4,30000);
insert into accom_option values(4,2,'스위트룸',2,5,80000);
insert into accom_option values(6,2,'비즈니스',2,5,45000);
insert into accom_option values(7,3,'일반',1,3,22000);
insert into accom_option values(8,3,'고급',1,3,40000);

insert into accom_option values(9,1,'스위트룸',1,4,40000);
insert into accom_option values(10,1,'일반실',1,4,20000);
insert into accom_option values(11,1,'비즈니스',1,4,30000);
insert into accom_option values(12,2,'스위트룸',2,5,80000);
insert into accom_option values(13,2,'비즈니스',2,5,45000);
insert into accom_option values(14,3,'일반',1,3,22000);
insert into accom_option values(15,3,'고급',1,3,40000);

insert into accom_option values(16,1,'스위트룸',1,4,40000);
insert into accom_option values(17,1,'일반실',1,4,20000);
insert into accom_option values(18,1,'비즈니스',1,4,30000);
insert into accom_option values(19,2,'스위트룸',2,5,80000);
insert into accom_option values(20,2,'비즈니스',2,5,45000);
insert into accom_option values(21,3,'일반',1,3,22000);
insert into accom_option values(22,3,'고급',1,3,40000);

insert into accom_book values(1,'aa',1,'a호텔','2021-02-04','2021-02-05',null,null,null,null,null);
insert into accom_book values(2,'bb',2,'a호텔','2021-02-05','2021-02-08',null,null,null,null,null);
insert into accom_book values(3,'aa',2,'a호텔','2021-02-08','2021-02-09',null,null,null,null,null);
insert into accom_book values(4,'cc',9,'a호텔','2021-02-04','2021-02-07',null,null,null,null,null);
insert into accom_book values(5,'dd',4,'b호텔','2021-02-09','2021-02-10',null,null,null,null,null);
insert into accom_book values(6,'ck',8,'c호텔','2021/02/18','2021/02/20','결제완료',40000,null,null,null);


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


-- 위 쿼리에서 나온 숙소의 최소 방값을 구하기
select accom_service_number snum,min(accom_price) minp from accom_option group by accom_service_number
having accom_service_number in(1,2,3);

select min(accom_price) minP from accom_option group by accom_service_number
		having accom_service_number=2;

 


