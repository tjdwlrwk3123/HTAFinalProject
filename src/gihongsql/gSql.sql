insert into category values(1,'투어');
insert into category values(2,'호텔');
insert into category values(3,'펜션');
insert into category values(4,'기타');
insert into category values(5,'리뷰');

insert into accom_info values(1,1,'좋은호텔','호텔소개?','유의사항','체크인/체크아웃시간체크');

insert into accom_service values(1,2,'양기홍','a호텔','서울시');
insert into accom_service values(2,2,'기','b호텔','부산광역시');
insert into accom_service values(3,2,'홍','c호텔','제주도');

insert into accom_option values(1,1,'스위트룸',1,4,4,40000);
insert into accom_option values(2,1,'일반실',1,4,5,20000);
insert into accom_option values(3,1,'비즈니스',1,4,2,30000);
insert into accom_option values(4,2,'스위트룸',2,5,2,80000);
insert into accom_option values(6,2,'비즈니스',2,5,5,45000);
insert into accom_option values(7,3,'일반',1,3,5,22000);
insert into accom_option values(8,3,'고급',1,3,5,40000);


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

select * from accom_service
where accom_service_number in(
select accom_service_number from accom_service join facilities on accom_service_number=facilities.service_number and 
accom_service.cate_number=facilities.cate_number where facility in('수영장','바베큐장')
)and accom_service_number in(
select accom_service_number from accom_service join convenience on accom_service_number=convenience.service_number and 
accom_service.cate_number=convenience.cate_number where conven='wifi'
);

select accom_service_number snum,min(accom_price) minp from accom_option group by accom_service_number
having accom_service_number in(1,2);

select min(accom_price) minP from accom_option group by accom_service_number
		having accom_service_number=2;

 

select min(accom_price) from accom_option group by accom_service_number
having accom_service_number in(
select accom_service_number from accom_service join facilities on accom_service_number=facilities.service_number and 
accom_service.cate_number=facilities.cate_number where facility='수영장'
) and accom_service_number in(
select accom_service_number from accom_service join convenience on accom_service_number=convenience.service_number and 
accom_service.cate_number=convenience.cate_number where conven='wifi'
);



select * from accom_service join facilities on accom_service_number=facilities.service_number and 
accom_service.cate_number=facilities.cate_number where facility='수영장';

select * from accom_service join convenience on accom_service_number=convenience.service_number and 
accom_service.cate_number=convenience.cate_number;
