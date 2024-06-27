-- ForME 데이터베이스 생성
CREATE DATABASE ForME;

-- ForME 데이터베이스 사용
USE ForME;

-- 회원(Member) 테이블 생성
CREATE TABLE Member (
    ID VARCHAR(10) NOT NULL PRIMARY KEY, -- 회원 아이디
    PWD CHAR(14) NOT NULL, -- 비밀번호
    NAME VARCHAR(20) NOT NULL, -- 이름
    HP VARCHAR(12) NOT NULL, -- 휴대폰번호
    AN VARCHAR(20) NOT NULL -- 인증번호
);

-- 계획예시 제공 기능(Provide) 테이블 생성
CREATE TABLE Provide (
    PE VARCHAR(30) NOT NULL, -- 계획예시
    PE_TITLE VARCHAR(30) NOT NULL PRIMARY KEY, -- 계획예시 제목
    PE_IMAGE BLOB, -- 이미지
    CATEGORY VARCHAR(30) -- 카테고리
);

-- 캘린더(Calendar) 테이블 생성
CREATE TABLE Calendar (
    DATA DATE NOT NULL, -- 날짜
    TP VARCHAR(300) NOT NULL PRIMARY KEY, -- 오늘의 계획
    FA_S VARCHAR(40) NOT NULL -- 명언
);

-- 버킷 리스트(BucketList) 테이블 생성
CREATE TABLE BucketList (
    TEXT VARCHAR(300) NOT NULL PRIMARY KEY, -- 글 작성
    IMAGE LONGBLOB -- 이미지
);

-- 기존 BBS 테이블 드롭
DROP TABLE IF EXISTS BBS;

-- 수정된 BBS 테이블 생성
CREATE TABLE BBS (
    NUMBER INT NOT NULL, -- 번호
    TITLE VARCHAR(30) NOT NULL, -- 제목
    CONTENT VARCHAR(300) NOT NULL, -- 글내용
    DATE_C DATE NOT NULL, -- 작성일자
    COMMENT VARCHAR(300), -- 댓글
    TEMP_TITLE VARCHAR(30), -- 임시저장글 제목
    TEMP_C VARCHAR(300), -- 임시저장글 내용
    TEMP_NUM INT, -- 임시저장글 번호
    TEMP_DATA DATE -- 임시저장글 날짜
);

-- 테이블 확인
SHOW TABLES;

-- 테이블 스키마 확인
DESCRIBE Member;

DESCRIBE Provide;

DESCRIBE Calendar;

DESCRIBE BucketList;

DESCRIBE BBS;