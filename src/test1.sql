
/* Drop Tables */

DROP TABLE accom_info CASCADE CONSTRAINTS;
DROP TABLE accom_option CASCADE CONSTRAINTS;
DROP TABLE accom_service CASCADE CONSTRAINTS;
DROP TABLE book_management CASCADE CONSTRAINTS;
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
DROP TABLE message CASCADE CONSTRAINTS;
DROP TABLE notice_board CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE user_info CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE accom_info
(
	accom_info_number number NOT NULL,
	accom_service_number number NOT NULL,
	accom_info_content varchar2(100),
	accom_how varchar2(100),
	accom_rule varchar2(100),
	accom_chekinfo varchar2(30),
	accom_facility varchar2(100),
	PRIMARY KEY (accom_info_number)
);


CREATE TABLE accom_option
(
	accom_option_number number NOT NULL,
	accom_service_number number NOT NULL,
	accom_rooms_option varchar2(40),
	accom_total number,
	accom_count number,
	accom_price number,
	PRIMARY KEY (accom_option_number)
);


CREATE TABLE accom_service
(
	accom_service_number number NOT NULL,
	cate_number number NOT NULL,
	user_accom_boss_name varchar2(30),
	accom_name varchar2(30),
	accom_addr xmltype,
	PRIMARY KEY (accom_service_number)
);


CREATE TABLE book_management
(
	book_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	book_startdate date,
	book_enddate date,
	service_name varchar2(30),
	service_option varchar2(30),
	payment_condition varchar2(20),
	total_price number,
	point_useamount number,
	coupon_usecondition varchar2(20),
	payment_method varchar2(30),
	PRIMARY KEY (book_number)
);


CREATE TABLE category
(
	cate_number number NOT NULL,
	cate_name varchar2(30),
	PRIMARY KEY (cate_number)
);


CREATE TABLE coupon
(
	coupon_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	discount_price number,
	effective_date date,
	coupon_usecondition varchar2(20),
	PRIMARY KEY (coupon_number)
);


CREATE TABLE customercenter
(
	question_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	question_content varchar2(100),
	question_date date,
	PRIMARY KEY (question_number)
);


CREATE TABLE customercenter_answer
(
	answer_number number NOT NULL,
	question_number number NOT NULL,
	answer_content varchar2(100),
	answer_date date NOT NULL,
	PRIMARY KEY (answer_number)
);


CREATE TABLE id_token
(
	token_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	token_data clob,
	token_authority clob,
	PRIMARY KEY (token_number)
);


CREATE TABLE message
(
	message_number number NOT NULL,
	send_userid varchar2(30) NOT NULL,
	receive_userid varchar2(30) NOT NULL,
	message_content clob NOT NULL,
	send_Time date NOT NULL,
	check_Read number,
	PRIMARY KEY (message_number)
);


CREATE TABLE notice_board
(
	notice_number number NOT NULL,
	notice_title varchar2(30) NOT NULL,
	notice_content varchar2(100),
	notice_date date,
	notice_image clob,
	PRIMARY KEY (notice_number)
);


CREATE TABLE review
(
	review_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	service_number number,
	star_point varchar2(30),
	review_content varchar2(100),
	review_image varchar2(100),
	review_comment varchar2(100),
	cate_number number NOT NULL,
	PRIMARY KEY (review_number)
);


CREATE TABLE review_answer
(
	review_answer_review number NOT NULL,
	review_number number NOT NULL,
	review_content varchar2(100),
	review_answer_Date date,
	PRIMARY KEY (review_answer_review)
);


CREATE TABLE service_answer
(
	service_answer_number number NOT NULL,
	service_question_number number NOT NULL,
	service_answer_content varchar2(100),
	service_answer_date date,
	PRIMARY KEY (service_answer_number)
);


CREATE TABLE service_question
(
	service_question_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	service_number number,
	service_question_content varchar2(50),
	service_question_date date,
	cate_number number NOT NULL,
	PRIMARY KEY (service_question_number)
);


CREATE TABLE tour_info
(
	tour_info_number number NOT NULL,
	service_number number NOT NULL,
	tour_content varchar2(100),
	tour_how varchar2(100),
	tour_rule nvarchar2(100),
	tour_warn varchar2(100),
	PRIMARY KEY (tour_info_number)
);


CREATE TABLE tour_option
(
	tour_option_number number NOT NULL,
	service_number number NOT NULL,
	tour_option varchar2(50),
	tour_price number,
	tour_amount number,
	PRIMARY KEY (tour_option_number)
);


CREATE TABLE tour_service
(
	service_number number NOT NULL,
	cate_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	tour_name varchar2(30),
	tour_addr xmltype,
	PRIMARY KEY (service_number)
);


CREATE TABLE user_info
(
	user_id varchar2(30) NOT NULL,
	user_pass varchar2(20) NOT NULL,
	user_name varchar2(20) NOT NULL,
	user_grade varchar2(20) NOT NULL,
	user_email varchar2(30),
	user_addr varchar2(40),
	user_phone number,
	user_condition varchar2(20),
	user_point number,
	PRIMARY KEY (user_id)
);


CREATE TABLE wishlist
(
	-- PK
	wishnum number NOT NULL,
	catenum number,
	service_number number NOT NULL,
	user_id varchar2(30) NOT NULL,
	PRIMARY KEY (wishnum)
);



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
;


ALTER TABLE review
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


ALTER TABLE book_management
	ADD FOREIGN KEY (user_id)
	REFERENCES user_info (user_id)
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



/* Comments */

COMMENT ON COLUMN wishlist.wishnum IS 'PK';







