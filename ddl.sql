
/* 팀 */
CREATE TABLE team (
   teamSeq NUMBER NOT NULL PRIMARY KEY, /* 팀번호 */
   name VARCHAR2(30) NOT NULL /* 팀명 */
);

/* 직원 */
CREATE TABLE employee (
   employeeSeq NUMBER NOT NULL PRIMARY KEY, /* 직원번호 */
   name VARCHAR2(15) NOT NULL, /* 이름 */
   tel VARCHAR2(50) NOT NULL, /* 연락처 */
   joinDate DATE NOT NULL, /* 입사일 */
   birth VARCHAR2(50) NOT NULL, /* 주민등록번호 */
   position VARCHAR2(15) NOT NULL, /* 직급 */
   lv NUMBER NOT NULL, /* 직책 */
   email VARCHAR2(50) NOT NULL, /* 이메일 */
   address VARCHAR2(200) NOT NULL, /* 주소 */
   teamSeq NUMBER REFERENCES team(teamSeq)/* 팀번호 */
);

/* 프로젝트 */
CREATE TABLE project (
   projectSeq NUMBER NOT NULL PRIMARY KEY, /* 프로젝트번호 */
   name VARCHAR2(100) NOT NULL, /* 프로젝트명 */
   startDate DATE NOT NULL, /* 프로젝트 시작일 */
   endDate DATE NOT NULL, /* 프로젝트 종료일 */
   projectType VARCHAR2(15) NOT NULL, /* 프로젝트 유형 */
   rndType VARCHAR2(15) NOT NULL, /* R&D개발 */
   budget NUMBER NOT NULL, /* 프로젝트 예산 */
   content VARCHAR2(4000) NOT NULL, /* 프로젝트 내용 */
   complete VARCHAR2(10) NOT NULL /* 완료여부 */
);
/* WBS */
CREATE TABLE wbs (
   wbsSeq NUMBER NOT NULL PRIMARY KEY, /* 등록번호 */
   wbsName VARCHAR2(100) NOT NULL, /* 작업명 */
   startDate DATE, /* 시작날짜 */
   endDate DATE, /* 종료날짜 */
   percent NUMBER, /* 완료퍼센트 */
   projectSeq NUMBER NOT NULL REFERENCES project(projectSeq), /* 프로젝트번호 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq)  /* 직원번호 */
);



/* 계정 */
CREATE TABLE register (
   id VARCHAR2(30) NOT NULL PRIMARY KEY, /* 아이디 */
   pw VARCHAR2(30) NOT NULL, /* 비밀번호 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq)/* 직원번호 */
);


/* 비용 */
CREATE TABLE cost (
   costSeq NUMBER NOT NULL PRIMARY KEY, /* 비용번호 */
   items VARCHAR2(100) NOT NULL, /* 지출항목 */
   money NUMBER NOT NULL, /* 금액 */
   costDate DATE NOT NULL, /* 지출일자 */
   signDate DATE DEFAULT sysdate NOT NULL, /* 등록일자 */
   projectSeq NUMBER NOT NULL REFERENCES project(ProjectSeq) /* 프로젝트번호 */
);


/* 이슈 */
CREATE TABLE issue (
   issueSeq NUMBER NOT NULL PRIMARY KEY, /* 이슈번호 */
   title VARCHAR2(100) NOT NULL, /* 이슈제목 */
   issuetype VARCHAR2(100) NOT NULL, /* 이슈종류 */
   issueDate DATE DEFAULT sysdate NOT NULL, /* 이슈등록일 */
   deadline DATE NOT NULL, /* 조치기한 */
   status VARCHAR2(10) DEFAULT 'w' NOT NULL, /* 조치상태 */
   issuecontent VARCHAR2(4000) NOT NULL, /* 이슈내용 */
   projectSeq NUMBER NOT NULL REFERENCES project(ProjectSeq), /* 프로젝트번호 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq) /* 직원번호 */
);



/* 산출물 */
CREATE TABLE product (
   productSeq NUMBER NOT NULL PRIMARY KEY, /* 산출물번호 */
   productName VARCHAR2(200) NOT NULL, /* 산출물명 */
   content VARCHAR2(4000) NOT NULL, /* 내용 */
   productDate DATE DEFAULT sysdate NOT NULL, /* 등록날짜 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq), /* 직원번호 */
   projectSeq NUMBER NOT NULL REFERENCES project(ProjectSeq) /* 프로젝트번호 */
);



/* 파일 */
CREATE TABLE ProductFile (
   fileSeq NUMBER NOT NULL PRIMARY KEY, /* 파일번호 */
   productSeq NUMBER NOT NULL REFERENCES product(productSeq), /* 산출물번호 */
   fileName VARCHAR2(100) NOT NULL /* 파일명 */
);



/* 캘린더 */
CREATE TABLE calendar (
   calendarSeq NUMBER NOT NULL PRIMARY KEY, /* 캘린더번호 */
   startDate DATE NOT NULL, /* 시작시간 */
   endDate DATE NOT NULL, /* 종료시간 */
   content VARCHAR2(100) NOT NULL, /* 내용 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq) /* 직원번호 */
);

/* 결재 */
CREATE TABLE sign (
   signSeq NUMBER NOT NULL PRIMARY KEY, /* 결재번호 */
   title VARCHAR2(100) NOT NULL, /* 결재안건 */
   content VARCHAR2(4000) NOT NULL, /* 결재내용 */
   signDate DATE DEFAULT sysdate NOT NULL, /* 등록일자 */
   signOkDate DATE, /* 승인일자 */
   signOk VARCHAR2(10) DEFAULT 'n' NOT NULL, /* 결재여부 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq), /* 직원번호 */
    projectSeq NUMBER NOT NULL REFERENCES project(projectSeq) /* 프로젝트 번호 */
);


/* 공지사항 */
CREATE TABLE notice (
   noticeSeq NUMBER NOT NULL PRIMARY KEY, /* 공지사항번호 */
   title VARCHAR2(100) NOT NULL, /* 제목 */
   NoticeDate DATE DEFAULT sysdate NOT NULL, /* 날짜 */
   content VARCHAR2(4000) NOT NULL, /* 내용 */
    noticeType VARCHAR2(10) NOT NULL, /* 유형 */
   employeeSeq NUMBER NOT NULL REFERENCES employee(employeeSeq) /* 직원번호 */
);



/* 공휴일 */
CREATE TABLE holiday (
   holidaySeq NUMBER NOT NULL PRIMARY KEY, /* 공휴일번호 */
   name VARCHAR2(100) NOT NULL, /* 공휴일명 */
   holidayDate DATE NOT NULL /* 날짜 */
);

/* 버전 */
CREATE TABLE VERSION (
    versionSeq NUMBER NOT NULL PRIMARY KEY, /* 버전번호 */
    version VARCHAR2(15) NOT NULL, /* 버전 */
    content VARCHAR2(4000) NOT NULL, /* 상세설명 */
    versionDate DATE NOT NULL, /* 날짜 */
    fileName VARCHAR2(100) /* 프로젝트번호 */
);

select * from product;

-- 산출물 뷰
create or replace view vwProduct
as
select p.productseq,pj.projectseq ,pj.name as pjname,e.employeeseq ,p.productname, e.name as emname, to_char(p.productdate ,'yyyy-mm-dd') as productdate
from
product p inner join project pj on p.projectseq = pj.projectseq
inner join employee e on e.employeeseq = p.employeeseq
order by productdate desc;

-- 작업 뷰
create or replace view vwtodo
as
select 
    distinct e.employeeseq, w.wbsseq, w.wbsname, p.projectseq , p.name as pjname, e.name as emname, to_char(w.startdate,'yyyy-mm-dd') as startdate, to_char(w.enddate,'yyyy-mm-dd') as enddate,w.percent
from
    project p
    inner join wbs w on w.projectseq = p.projectseq
    inner join employee e on e.employeeseq = w.employeeseq;
    
select * from wbs;




