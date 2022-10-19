
CREATE TABLE ORGANIZATION
(
  UNIQUE_ID        VARCHAR(200) NOT NULL COMMENT '대푯값',
  DEPARTMENT       VARCHAR(200) NOT NULL COMMENT '부서',
  UNIQUE_ID_PARENT VARCHAR(200) NOT NULL COMMENT '상위대푯값',
  UNIQUE_ID        VARCHAR(200) NOT NULL COMMENT '대푯값',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '조직도';

ALTER TABLE ORGANIZATION
  ADD CONSTRAINT FK_ORGANIZATION_TO_ORGANIZATION
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES ORGANIZATION (UNIQUE_ID);