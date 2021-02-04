insert into category values(1,'투어');
insert into category values(2,'호텔');
insert into category values(3,'펜션');
insert into category values(4,'기타');
insert into category values(5,'리뷰');

insert into accom_info values(1,1,'좋은호텔','호텔소개?','유의사항','체크인/체크아웃시간체크');

insert into accom_service values(1,2,'양기홍','a호텔','서울시');
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


insert into facilities values(1,2,1,'바베큐장');
insert into facilities values(2,2,1,'수영장');
insert into facilities values(3,2,1,'유아시설');
insert into facilities values(4,2,1,'편의점');
insert into facilities values(5,2,2,'수영장');

insert into convenience values(1,2,1,'조식서비스');
insert into convenience values(2,2,1,'무료주차');
insert into convenience values(3,2,1,'wifi');

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

--테이블 수정?
select * from accom_service join facilities on accom_service_number=facilities.service_number and 
accom_service.cate_number=facilities.cate_number where facility like '%수영장%' and facility like '%바베큐장%';



-- 위 쿼리에서 나온 숙소의 최소 방값을 구하기
select accom_service_number snum,min(accom_price) minp from accom_option group by accom_service_number
having accom_service_number in(1,2,3);

select min(accom_price) minP from accom_option group by accom_service_number
		having accom_service_number=2;

 


