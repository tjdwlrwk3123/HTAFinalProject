insert into accom_service values(1,2,'±âÈ«','È£ÅÚ','<service></service>');
insert into accom_option values(2,1,'ÀÏ¹Ý½Ç',13000,3,0);
insert into category values(2,'¼÷¼Ò');
insert into image values(6,'dd.jpg','12322-12 dd.jpg',2,2);
insert into wishlist values(3,2,1,'yang');
commit;
rollback;
select * from accom_service;
select * from accom_option;
select * from wishlist;
select * from image;

select * from wishlist inner join image on wishlist.cate_number = image.cate_number
and wishlist.service_number=image.general_number;