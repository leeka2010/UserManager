CREATE TABLE USERMANAGER.USER (
  ID INT NOT NULL AUTO_INCREMENT,
  USER_NAME VARCHAR(255) NOT NULL,
  USER_AGE INT NOT NULL,
  USER_isAdmin boolean NOT NULL,
  CREATED_DATA TIMESTAMP);
