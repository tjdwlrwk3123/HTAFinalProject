
/* Drop Tables */

DROP TABLE accom_info CASCADE CONSTRAINTS;
DROP TABLE accom_option CASCADE CONSTRAINTS;
DROP TABLE accom_service CASCADE CONSTRAINTS;
DROP TABLE book_management CASCADE CONSTRAINTS;
DROP TABLE accom_book CASCADE CONSTRAINTS;
DROP TABLE tour_book CASCADE CONSTRAINTS;
DROP TABLE review_answer CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE service_answer CASCADE CONSTRAINTS;
DROP TABLE service_question CASCADE CONSTRAINTS;
DROP TABLE tour_info CASCADE CONSTRAINTS;
DROP TABLE tour_option CASCADE CONSTRAINTS;
DROP TABLE tour_service CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE customercenter_answer CASCADE CONSTRAINTS;
DROP TABLE customercenter CASCADE CONSTRAINTS;
DROP TABLE id_token CASCADE CONSTRAINTS;
DROP TABLE image CASCADE CONSTRAINTS;
DROP TABLE message CASCADE CONSTRAINTS;
DROP TABLE notice_board CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE user_info CASCADE CONSTRAINTS;
DROP TABLE facilities CASCADE CONSTRAINTS;
DROP TABLE convenience CASCADE CONSTRAINTS;
DROP TABLE tour_book_option CASCADE CONSTRAINTS;
DROP TABLE VISITOR_INFO CASCADE CONSTRAINTS;

/* Drop Sequences */

DROP SEQUENCE WISH_SEQ;
DROP SEQUENCE TI_SEQ;
DROP SEQUENCE TO_SEQ;
DROP SEQUENCE AB_SEQ;
DROP SEQUENCE TB_SEQ;
DROP SEQUENCE VI_SEQ;
DROP SEQUENCE TOKEN_SEQ;
DROP SEQUENCE COUPON_SEQ;


/* Create Tables */

CREATE TABLE accom_info
(
	accom_info_number number NOT NULL,
	accom_service_number number NOT NULL,
	accom_info_content varchar2(2000),
	accom_how varchar2(3000),
	accom_rule varchar2(2000),
	accom_chekinfo varchar2(500),
	facility varchar2(2000),
	conven varchar2(2000),
	PRIMARY KEY (accom_info_number)
);


CREATE TABLE accom_option
(
	accom_option_number number NOT NULL,
	accom_service_number number NOT NULL,
	accom_rooms_option varchar2(1000),
	accom_min_people number,
	accom_max_people number,
	accom_price number,
	discount number,
	PRIMARY KEY (accom_option_number)
);


CREATE TABLE accom_service
(
	accom_service_number number NOT NULL,
	cate_number number NOT NULL,
	user_accom_boss_name varchar2(500),
	accom_name varchar2(500),
	accom_addr clob,
	PRIMARY KEY (accom_service_number)
);


CREATE TABLE accom_book
(
	accom_book_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	accom_option_number number,
	service_name varchar2(1000),
	accom_startdate date,
	accom_enddate date,
	payment_condition varchar2(200),
	total_price number,
	point_useamount number,
	coupon_usecondition varchar2(200),
	payment_method varchar2(200),
	PRIMARY KEY (accom_book_number)
);


CREATE TABLE tour_book
(
	tour_book_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	service_number number(5), --tour_service???????????? ?????????????????? service_number
	service_name varchar2(1000),
	tour_startdate date,
	tour_enddate date,
	payment_condition varchar2(200),
	total_price number,
	point_useamount number,
	coupon_usecondition varchar2(200),
	payment_method varchar2(200),
	bookername varchar2(200),
	bookerphone varchar2(200),
	PRIMARY KEY (tour_book_number)
);

CREATE TABLE tour_book_option
(
	tour_book_option_number number NOT NULL,
	tour_book_number number, --tour_book???????????? ?????????????????? tour_book_number
	tour_option_index number(5),
	cnt number(5),
	PRIMARY KEY (tour_book_option_number)
);



CREATE TABLE category
(
	cate_number number NOT NULL,
	cate_name varchar2(200),
	PRIMARY KEY (cate_number)
);


CREATE TABLE coupon
(
	coupon_number number NOT NULL,
	coupon_name varchar2(255) NOT NULL,
	user_id varchar2(200) NOT NULL,
	discount_price number,
	expire_date date,
	coupon_usecondition number(5),
	PRIMARY KEY (coupon_number)
);


CREATE TABLE customercenter
(
	question_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	question_content varchar2(2000),
	question_date date,
	PRIMARY KEY (question_number)
);


CREATE TABLE customercenter_answer
(
	answer_number number NOT NULL,
	question_number number NOT NULL,
	answer_content varchar2(2000),
	answer_date date NOT NULL,
	PRIMARY KEY (answer_number)
);


CREATE TABLE id_token
(
	token_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	token_data clob,
	token_authority clob,
	PRIMARY KEY (token_number)
);


CREATE TABLE image
(
	img_num number NOT NULL,
	imgorgname varchar2(3000) NOT NULL,
	imgsavename varchar2(3000) NOT NULL,
	general_number number NOT NULL,
	cate_number number NOT NULL,
	PRIMARY KEY (img_num)
);


CREATE TABLE message
(
	message_number number NOT NULL,
	send_userid varchar2(200) NOT NULL,
	receive_userid varchar2(200) NOT NULL,
	message_content clob NOT NULL,
	send_Time date NOT NULL,
	check_Read number,
	PRIMARY KEY (message_number)
);


CREATE TABLE notice_board
(
	notice_number number NOT NULL,
	notice_title varchar2(500) NOT NULL,
	notice_content varchar2(3000),
	notice_date date,
	notice_image clob,
	PRIMARY KEY (notice_number)
);


CREATE TABLE review
(
	review_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	service_number number,
	star_point number(1),
	review_content varchar2(3000),
	review_image varchar2(3000),
	review_comment varchar2(3000),
	cate_number number NOT NULL,
	review_date date,
	PRIMARY KEY (review_number)
);


CREATE TABLE review_answer
(
	review_answer_number number NOT NULL,
	review_number number NOT NULL,
	review_content varchar2(3000),
	review_answer_Date date,
	PRIMARY KEY (review_answer_number)
);


CREATE TABLE service_answer
(
	service_answer_number number NOT NULL,
	service_question_number number NOT NULL,
	service_answer_content varchar2(3000),
	service_answer_date date,
	PRIMARY KEY (service_answer_number)
);


CREATE TABLE service_question
(
	service_question_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	service_number number,
	service_question_content varchar2(3000),
	service_question_date date,
	cate_number number NOT NULL,
	PRIMARY KEY (service_question_number)
);


CREATE TABLE tour_info
(
	tour_info_number number NOT NULL,
	service_number number NOT NULL,
	tour_content varchar2(3000),
	tour_how varchar2(3000),
	tour_rule nvarchar2(1000),
	tour_expire date,
	PRIMARY KEY (tour_info_number)
);


CREATE TABLE tour_option
(
	tour_option_number number NOT NULL,
	service_number number NOT NULL,
	tour_option_index number NOT NULL,
	tour_option varchar2(3000),
	tour_price number,
	tour_amount number,
	discount number,
	PRIMARY KEY (tour_option_number)
);


CREATE TABLE tour_service
(
	service_number number NOT NULL,
	cate_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	tour_name varchar2(500),
	tour_addr clob,
	tour_type varchar2(500),
	PRIMARY KEY (service_number)
);


CREATE TABLE user_info
(
	user_id varchar2(200) NOT NULL,
	user_pass varchar2(3000) NOT NULL,
	user_name varchar2(200) NOT NULL,
	user_grade varchar2(100) NOT NULL,
	user_email varchar2(500),
	user_addr varchar2(1000),
	user_phone varchar2(500),
	user_condition varchar2(200),
	user_point number,
	PRIMARY KEY (user_id)
);


CREATE TABLE wishlist
(
	-- PK
	wishnum number NOT NULL,
	cate_number number,
	service_number number NOT NULL,
	user_id varchar2(200) NOT NULL,
	PRIMARY KEY (wishnum)
);

create table chatusers
( num number(5) primary key,
  username varchar2(255),
  using number(1)
);
--insert into chatusers values(1, 'customer1', '0');
--insert into chatusers values(2, 'customer2', '0');
--insert into chatusers values(3, 'customer3', '0');
--insert into chatusers values(4, 'customer4', '0');

create table visitor_info
(
    visitor_info_number number not null,
    accom_book_number number not null,
    visitor_name varchar2(200),
    visitor_email varchar2(500),
    visitor_phone varchar2(100),
    primary key(visitor_info_number)
);

/* Create Sequences */

create sequence wish_seq;

create sequence ti_seq -- tour_info
start with 1
increment by 1;

create sequence to_seq -- tour_option
start with 1
increment by 1;

create sequence wish_seq -- wishlist
start with 1
increment by 1;

create sequence ab_seq -- accom_book
start with 1
increment by 1;

create sequence tb_seq -- tour_book
start with 1
increment by 1;

create sequence vi_seq -- visitor_info
start with 1
increment by 1 ;

create sequence token_seq --id_token
start with 1
increment by 1;

create sequence coupon_seq --coupon
start with 1
increment by 1;

/* Create Foreign Keys */

ALTER TABLE accom_info
	ADD FOREIGN KEY (accom_service_number)
	REFERENCES accom_service (accom_service_number)
;


ALTER TABLE accom_option
	ADD FOREIGN KEY (accom_service_number)
	REFERENCES accom_service (accom_service_number)
;


ALTER TABLE accom_service
	ADD FOREIGN KEY (cate_number)
	REFERENCES category (cate_number)
	ADD FOREIGN KEY (user_accom_boss_name)
	REFERENCES user_info(user_id)
;


ALTER TABLE review
	ADD FOREIGN KEY (cate_number)
	REFERENCES category (cate_number)
;


ALTER TABLE image
	ADD FOREIGN KEY (cate_number)
	REFERENCES category (cate_number)
;


ALTER TABLE service_question
	ADD FOREIGN KEY (cate_number)
	REFERENCES category (cate_number)
;


ALTER TABLE tour_service
	ADD FOREIGN KEY (cate_number)
	REFERENCES category (cate_number)
;


ALTER TABLE customercenter_answer
	ADD FOREIGN KEY (question_number)
	REFERENCES customercenter (question_number)
;


ALTER TABLE review_answer
	ADD FOREIGN KEY (review_number)
	REFERENCES review (review_number)
;


ALTER TABLE service_answer
	ADD FOREIGN KEY (service_question_number)
	REFERENCES service_question (service_question_number)
;


ALTER TABLE tour_info
	ADD FOREIGN KEY (service_number)
	REFERENCES tour_service (service_number)
;


ALTER TABLE tour_option
	ADD FOREIGN KEY (service_number)
	REFERENCES tour_service (service_number)
;


ALTER TABLE accom_book
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
	ADD FOREIGN KEY (accom_option_number)
	REFERENCES accom_option (accom_option_number)
;


ALTER TABLE tour_book
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
	ADD FOREIGN KEY (service_number)
	REFERENCES tour_service (service_number)
;

ALTER TABLE tour_book_option
	ADD FOREIGN KEY (tour_book_number)
	REFERENCES tour_book (tour_book_number)
;


ALTER TABLE coupon
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE customercenter
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE id_token
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE message
	ADD FOREIGN KEY (send_userid)
	REFERENCES user_info (user_id)
;


ALTER TABLE message
	ADD FOREIGN KEY (receive_userid)
	REFERENCES user_info (user_id)
;


ALTER TABLE review
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE service_question
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE tour_service
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (cate_number)
	REFERENCES category (cate_number)
;


alter table visitor_info
    add foreign key (accom_book_number)
    references accom_book (accom_book_number)
;


/* Comments */

COMMENT ON COLUMN wishlist.wishnum IS 'PK';







