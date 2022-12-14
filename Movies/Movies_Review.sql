
CREATE TABLE MOVIE
(
  MOVIE_UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '영화 대표값',
  MOVIE_TITLE     VARCHAR(200) NOT NULL COMMENT '영화제목',
  PRIMARY KEY (MOVIE_UNIQUE_ID)
) COMMENT '영화';

CREATE TABLE MOVIE_REVIEW
(
  MOVIE_UNIQUE_ID  VARCHAR(200) NOT NULL COMMENT '영화 대표값',
  REVIEW_UNIQUE_ID VARCHAR(200) NOT NULL
) COMMENT '영화리뷰';

CREATE TABLE REVIEW
(
  REVIEW_TITLE     VARCHAR(200) NOT NULL COMMENT '리뷰제목',
  COMMENT          VARCHAR(200) NOT NULL COMMENT '내용',
  CREATE_DATE      VARCHAR(200) NOT NULL COMMENT '작성일',
  SCORE            VARCHAR(200) NOT NULL COMMENT '별점',
  REVIEW_UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '리뷰대표값',
  PRIMARY KEY (REVIEW_UNIQUE_ID)
) COMMENT '리뷰';

CREATE TABLE USER_REVIEW
(
  REVIEW_UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '리뷰대표값',
  USERS_UNIQUE_ID  VARCHAR(200) NOT NULL COMMENT '사용자 대표값'
) COMMENT '사용자리뷰';

CREATE TABLE USERS
(
  USERS           VARCHAR(200) NOT NULL COMMENT '사용자들',
  USERS_UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
  PRIMARY KEY (USERS_UNIQUE_ID)
) COMMENT '사용자';

ALTER TABLE MOVIE_REVIEW
  ADD CONSTRAINT FK_MOVIE_TO_MOVIE_REVIEW
    FOREIGN KEY (MOVIE_UNIQUE_ID)
    REFERENCES MOVIE (MOVIE_UNIQUE_ID);

ALTER TABLE MOVIE_REVIEW
  ADD CONSTRAINT FK_REVIEW_TO_MOVIE_REVIEW
    FOREIGN KEY (REVIEW_UNIQUE_ID)
    REFERENCES REVIEW (REVIEW_UNIQUE_ID);

ALTER TABLE USER_REVIEW
  ADD CONSTRAINT FK_REVIEW_TO_USER_REVIEW
    FOREIGN KEY (REVIEW_UNIQUE_ID)
    REFERENCES REVIEW (REVIEW_UNIQUE_ID);

ALTER TABLE USER_REVIEW
  ADD CONSTRAINT FK_USERS_TO_USER_REVIEW
    FOREIGN KEY (USERS_UNIQUE_ID)
    REFERENCES USERS (USERS_UNIQUE_ID);
