create sequence issueSeq;
create sequence projectSeq;
create sequence employeeSeq;
create sequence fileSeq;
create sequence productSeq;
create sequence wbsSeq;
create sequence signSeq;
create sequence noticeSeq;
create sequence holidaySeq;
create sequence teamSeq;
create sequence costSeq;

---------------------------------------------------------------------------------------------------------------------------------------------------
--team
insert into team
(teamSeq, name)
values
(teamSeq.nextVal,'개발 1팀');
select * from product where employeeseq=1;
insert into team
(teamSeq, name)
values
(teamSeq.nextVal,'개발 2팀');

insert into team
(teamSeq, name)
values
(teamSeq.nextVal,'개발 3팀');

------------------------------------------------------------------------------

--프로젝트 데이터

--project
insert into project
(projectSeq, name, startDate, endDate, projectType, rndType, budget, content, complete) 
values 
(projectSeq.nextVal,'금융상품 추천 어플리케이션 제작', to_date('2022-01-01','yyyy-mm-dd'), to_date('2022-06-01','yyyy-mm-dd'),'선행개발','앱 개발',20000000 ,'고객 개개인별 맞춤 금융상품을 추천하는 프로그램을 제작하는 프로젝트 입니다.', '완료');


insert into project
(projectSeq, name, startDate, endDate, projectType, rndType, budget, content, complete) 
values 
(projectSeq.nextVal,'웹 크롤링 프로그램 제작', to_date('2022-03-02','yyyy-mm-dd'), to_date('2022-09-01','yyyy-mm-dd'),'양산개발','모바일개발',50000000 ,'웹페이지를 크롤링 하는 프로그램을 제작하는 프로젝트 입니다', '완료');


insert into project
(projectSeq, name, startDate, endDate, projectType, rndType, budget, content, complete) 
values
(projectSeq.nextVal,'POS프로그램 제작', to_date('2022-03-02','yyyy-mm-dd'), to_date('2022-09-01','yyyy-mm-dd'),'선행개발','앱 개발',25000000 ,'점포의 pos시스템을 제작하는 프로젝트 입니다.', '완료');


--WBS

--1번 플젝
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '프로젝트 계획', '2022-01-01', '2022-01-10', 100, 1, 1);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '클라이언트 요구조건 취합', '2022-01-10', '2022-01-17', 100, 1, 1);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 취합 분석', '2022-01-17', '2022-01-30', 100, 1, 1);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '시스템 환경 분석', '2022-01-20', '2022-02-01', 100, 1, 1);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 기능 분석', '2022-02-01', '2022-02-09', 100, 1, 2);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구분석 검토', '2022-02-09', '2022-02-19', 100, 1, 2);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '스토리보드 화면 설계', '2022-02-19', '2022-03-12', 100, 1, 2);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '개발기능정의', '2022-03-03', '2022-03-15', 100, 1, 2);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, 'DB설계', '2022-03-15', '2022-03-20', 100, 1, 3);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '메인 개발', '2022-03-20', '2022-04-01', 100, 1, 3);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '1차 수정 개발', '2022-04-01', '2022-04-05', 100, 1, 3);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '2차 수정 개발', '2022-04-05', '2022-04-15', 100, 1, 3);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트 계획서 작성', '2022-04-15', '2022-04-16', 100, 1, 4);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '단위테스트', '2022-04-16', '2022-04-18', 100, 1, 4);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트리포트', '2022-04-18', '2022-04-20', 100, 1, 4);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '디버깅', '2022-04-20', '2022-04-25', 100, 1, 4);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '작업사항 고객검토', '2022-04-23', '2022-04-27', 100, 1, 5);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '고객 요청반영', '2022-04-27', '2022-05-10', 100, 1, 5);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 릴리즈', '2022-05-10', '2022-05-15', 100, 1, 5);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 안정화', '2022-05-15', '2022-06-01', 100, 1, 5);

--2번 플젝
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '프로젝트 계획', '2022-03-02', '2022-03-10', 100, 2, 6);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '클라이언트 요구조건 취합', '2022-03-10', '2022-03-17', 100, 2, 6);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 취합 분석', '2022-03-17', '2022-03-30', 100, 2, 6);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '시스템 환경 분석', '2022-04-20', '2022-05-01', 100, 2, 6);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 기능 분석', '2022-05-01', '2022-05-09', 100, 2, 7);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구분석 검토', '2022-05-09', '2022-05-19', 100, 2, 7);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '스토리보드 화면 설계', '2022-05-19', '2022-06-12', 100, 2, 7);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '개발기능정의', '2022-06-03', '2022-06-15', 100, 2, 7);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, 'DB설계', '2022-06-15', '2022-06-20', 100, 2, 8);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '메인 개발', '2022-06-20', '2022-07-01', 100, 2, 8);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '1차 수정 개발', '2022-07-01', '2022-07-05', 100, 2, 8);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '2차 수정 개발', '2022-07-05', '2022-07-15', 100, 2, 8);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트 계획서 작성', '2022-07-15', '2022-07-16', 100, 2, 9);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '단위테스트', '2022-07-16', '2022-07-18', 100, 2, 9);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트리포트', '2022-07-18', '2022-07-20', 100, 2, 9);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '디버깅', '2022-07-20', '2022-07-25', 100, 2, 9);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '작업사항 고객검토', '2022-07-23', '2022-07-27', 100, 2, 10);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '고객 요청반영', '2022-07-27', '2022-08-10', 100, 2, 10);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 릴리즈', '2022-08-10', '2022-08-15', 100, 2, 10);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 안정화', '2022-08-15', '2022-09-01', 100, 2, 10);

--3번 플젝
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '프로젝트 계획', '2022-03-02', '2022-03-10', 100, 3, 11);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '클라이언트 요구조건 취합', '2022-03-10', '2022-03-17', 100, 3, 11);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 취합 분석', '2022-03-17', '2022-03-30', 100, 3, 11);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '시스템 환경 분석', '2022-04-20', '2022-05-01', 100, 3, 11);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 기능 분석', '2022-05-01', '2022-05-09', 100, 3, 12);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구분석 검토', '2022-05-09', '2022-05-19', 100, 3, 12);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '스토리보드 화면 설계', '2022-05-19', '2022-06-12', 100, 3, 12);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '개발기능정의', '2022-06-03', '2022-06-15', 100, 3, 12);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, 'DB설계', '2022-06-15', '2022-06-20', 100, 3, 13);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '메인 개발', '2022-06-20', '2022-07-01', 100, 3, 13);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '1차 수정 개발', '2022-07-01', '2022-07-05', 100, 3, 13);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '2차 수정 개발', '2022-07-05', '2022-07-15', 100, 3, 13);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트 계획서 작성', '2022-07-15', '2022-07-16', 100, 3, 14);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '단위테스트', '2022-07-16', '2022-07-18', 100, 3, 14);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트리포트', '2022-07-18', '2022-07-20', 100, 3, 14);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '디버깅', '2022-07-20', '2022-07-25', 100, 3, 14);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '작업사항 고객검토', '2022-07-23', '2022-07-27', 100, 3, 15);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '고객 요청반영', '2022-07-27', '2022-08-10', 100, 3, 15);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 릴리즈', '2022-08-10', '2022-08-15', 100, 3, 15);
INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 안정화', '2022-08-15', '2022-09-01', 100, 3, 15);


---------------------------------
--등록

INSERT INTO register (id, pw, employeeSeq) VALUES ('genhquy', 'ccsm6e0i', 1 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('hvmxqdi', 'n0d91hrm', 2 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('shjeewg', '6mti812v', 3 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ajwyalw', '8ym0fka1', 4 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('qbdzyfd', 'lzwx5kj0', 5 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ssipvbl', 'fnb626ic', 6 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('zzbvoec', 'ddflivs6', 7 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('dgnrouk', 'qzx7cguo', 8 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('acfayly', '7tw9ixqk', 9 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('pgfzeeg', 'v6ghkya9', 10 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('kbyltmk', '0y6pybhm', 11 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ahifpfg', 'eta9v73r', 12 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rcysfzl', 'bvolf86s', 13 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('xhdbjvp', 'jj2t8hvm', 14 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('utkpruv', 'b8tog8mt', 15 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ivsrfon', 'jdudmiep', 16 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ihidxfr', 'djj4vcwy', 17 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rmbsjik', 'esxpd466', 18 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('mnqoecp', '429jb1t6', 19 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('jcpoutr', '6gl28si5', 20 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('hdoxlis', '27oz6p5o', 21 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('nunlaro', '1vw1anii', 22 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('lcisedv', 'sysym1hx', 23 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('raeitee', 'oqhj23ys', 24 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('xojtcjh', 'tut3pbsw', 25 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ypavzrw', 'by1kvb7x', 26 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('xixpxzr', '6ie0ywdl', 27 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('dmxvmki', 'gy9yx18r', 28 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bdagciw', 'n8bnbnwx', 29 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('llifhpw', 'om291hgg', 30 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bidxzqy', 'mw8g6cj3', 31 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('skbuykq', '99h68cc5', 32 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('kuqobqg', 'tj9ls4f5', 33 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('inqiyjq', 'se3k85gz', 34 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('pkfsxfg', '1cy1ca80', 35 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('djwttsr', 'lc7jv0v4', 36 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('iydneff', 'ocotpkel', 37 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ffirhow', 'hs3jnut9', 38 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ubbnnnr', '11of440n', 39 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('jznjuba', 'exnjn5bx', 40 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('tsdjqyw', 'dtt3wsx3', 41 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('lfupbpa', 'syw9i28q', 42 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('aeducsc', 'f1sm6kui', 43 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('lweqllo', '43o4q69j', 44 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ogcsknp', 'hlii9fan', 45 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('hefaqtt', 'el7v369r', 46 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('nimqbpa', '4pvccw9e', 47 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('peajxsc', 'icecfdic', 48 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ycwbuyv', '8255wmj5', 49 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('kbwdvno', 'k0s2yhkh', 50 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rgxbkid', '3ppdrx9y', 51 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('lzcyvpl', 'ibs6n0pn', 52 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ikfvozx', 'h4qmwlmv', 53 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bmzfsph', '1ppq7euu', 54 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bgwcyfl', 'y5fas073', 55 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('xbfcyrk', 'arv6z9xu', 56 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('dpqsoek', 'q2s6ceqn', 57 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('wmtpvzc', '07ttgwdd', 58 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('dnkfnrk', 'jyljg3gj', 59 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('wywaqxs', 'f2tve6ay', 60 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('heddnir', 'fllnwabx', 61 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('wgdqozl', 's7okkqr1', 62 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('dyqgbeu', '2cipwlzq', 63 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('npnsbxw', 'xrlyk5tr', 64 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('pnljaro', 'xx47eluy', 65 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('deoapok', 'hgize813', 66 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('qwvtuyy', 'vg9se8oy', 67 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rzkibhn', 'jo0i041e', 68 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ejenfas', '7c0ibvrm', 69 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rjcwepi', 'heo2329y', 70 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ogbmfck', 'nykzlv12', 71 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('eeekprw', 'n301ikjr', 72 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('myldwyu', '7oyjzmgj', 73 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('iekyine', 'pyb13nig', 74 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('edijwci', 'l0fugaq0', 75 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('xmpbnzz', '9t5ulwj4', 76 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ksepbqm', '3tuw9g8r', 77 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bmucuym', '3lptxewv', 78 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('wkjysne', 'ij7ac9tx', 79 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('nqapjch', 'vgkwws57', 80 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('gqsevpc', '7jw6fhtg', 81 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('ndyihuv', 'ru7q5u1c', 82 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('sjbwlvi', 'r0ijbunv', 83 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('gdzezgo', 'k2pr275s', 84 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('dnlydgp', 'qlqptqj3', 85 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('scbkbyh', 'uzsiejx0', 86 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bltzgne', 'mgkiwqjb', 87 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('vqhhfak', 'btipcjqe', 88 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('zwxdrhh', 'uyrt19d5', 89 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('roiaznm', 'i8b4pxrh', 90 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('grornnv', 'ior3kq85', 91 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rewnaxt', '1dipe1yt', 92 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('bqdifqc', 'de06htyc', 93 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('mnigfgq', 'd3ohogs4', 94 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('jkpvvxf', '4foi40u0', 95 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('cqxmhwp', 'j1dxdyox', 96 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('fgvsnwv', 'v2lb5ulq', 97 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('oqvelhy', 'qte6h6pe', 98 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rtfcrgu', '9hamyevq', 99 );
INSERT INTO register (id, pw, employeeSeq) VALUES ('rywdsdv', '51g1fgkn', 100 );




--------------------------------------


--비용 데이터

--cost
insert into cost
(costSeq, items, money, costDate, signDate, projectSeq) 
values
(costSeq.nextval,'서버 증설',10000000 , to_date('2022-02-22','yyyy-mm-dd'),sysdate,1);

insert into cost
(costSeq, items, money, costDate, signDate, projectSeq) 
values
(costSeq.nextval,'외주 작업',5000000 , to_date('2023-05-18','yyyy-mm-dd'),sysdate,1 );

insert into cost
(costSeq, items, money, costDate, signDate, projectSeq) 
values
(costSeq.nextval,'서버 증설',10000000 , to_date('2022-03-12','yyyy-mm-dd'),sysdate,2 );

insert into cost
(costSeq, items, money, costDate, signDate, projectSeq) 
values
(costSeq.nextval,'추가 인력',30000000 , to_date('2022-05-22','yyyy-mm-dd'),sysdate,2 );

insert into cost
(costSeq, items, money, costDate, signDate, projectSeq) 
values
(costSeq.nextval,'SW 구매',15000000 , to_date('2022-07-22','yyyy-mm-dd'),sysdate,3 );

insert into cost
(costSeq, items, money, costDate, signDate, projectSeq) 
values
(costSeq.nextval,'기타 경비',10000000 , to_date('2022-08-10','yyyy-mm-dd'),sysdate,3 );


------------------------------------------------------

--이슈

SELECT * FROM ISSUE;

insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '새로운 기능 추가', '승인신청', to_date('2022-03-10'), to_date('2022-03-14'),  'w', '프로젝트 기능 추가 목록 확인 부탁드립니다.', 1, 2);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '소스 코드 오류', '일정지연', to_date('2022-05-11'), to_date('2022-05-13'),  'w', '수정한 소스 코드 확인 부탁드립니다.', 1, 3);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '수정사항 검토', '승인신청', to_date('2022-03-04'), to_date('2022-03-05'), 'w', '수정사항 반영한 파일 업로드 확인 부탁드립니다.', 1, 4);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '테스트 진행 검토', '승인신청', to_date('2022-05-18'), to_date('2022-05-22'),  'w', '테스트 진행 후 검토사항입니다.', 1, 5);

insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '고객 요구사항 추가', '승인신청', to_date('2022-03-22'), to_date('2022-03-23'),'w', '고객 요구사항 추가사항 부탁드립니다.', 2, 7);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '소스 코드 오류', '일정지연', to_date('2022-05-15'), to_date('2022-05-17'),  'w', '수정한 소스 코드 확인 부탁드립니다.', 2, 8);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '일정 연기 확인', '일정지연', to_date('2022-06-11'), to_date('2022-06-20'),'w', '회의 참석으로 인한 일정연기  확인 부탁드립니다.', 2, 9);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '금일 회의 후 수정사항 반영', '승인신청', to_date('2022-08-09'), to_date('2022-08-17'),'w', '회의 후 수정사항 반영한 파일 확인 부탁드립니다.', 2, 10);

insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '고객 변심건 확인 요청', '고객변심', to_date('2022-04-15'), to_date('2022-04-19'), 'w', '고객 변심건 확인 부탁드립니다.', 3, 12);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '일정 지연 확인요청', '일정지연', to_date('2022-05-24'), to_date('2022-05-26'), 'w', '고객 변심건으로 인한 일정 연기 확인부탁드립니다.', 3, 13);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '리소스 수정사항 확인', '승인신청', to_date('2022-07-11'), to_date('2022-07-15'), 'w', '리소스 수정사항 확인 부탁드립니다.', 3, 14);
insert into issue(issueSeq, title, issueType, issueDate, deadline, status, issueContent, projectSeq, employeeSeq)
values (issueSeq.nextVal, '검토 리스트 수정', '승인신청', to_date('2022-08-05'), to_date('2022-08-11'), 'w', '검토 리스트 수정 확인 부탁드립니다.', 3, 15);



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--산출물



select employeeSeq from product;

insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 요구사항 명세서', '명세서', to_date('2022-01-09'), 1, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 기술 명세서', '명세서', to_date('2022-02-10'), 1, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 화면 설계서', '설계서', to_date('2022-03-15'), 2, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 데이터베이스 설계서', '설계서', to_date('2022-03-25'), 2, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 소스코드', '데이터', to_date('2022-04-20'), 3, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 위험 관리 계획서', '계획서', to_date('2022-04-30'), 3, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 변경 제어 문서', '명세서', to_date('2022-05-15'), 4, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 보고서', '명세서', to_date('2022-05-28'), 4, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 배포 및 운영 문서', '명세서', to_date('2022-05-31'), 5, 1);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '금융 프로젝트 유지 보수 문서', '명세서', to_date('2022-06-01'), 5, 1);




insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 요구사항 명세서', '명세서', to_date('2022-03-15'), 6, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 기술 명세서', '명세서', to_date('2022-03-23'), 6, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 화면 설계서', '설계서', to_date('2022-04-05'), 7, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 데이터베이스 설계서', '설계서', to_date('2022-04-26'), 7, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 소스코드', '데이터', to_date('2022-07-18'), 8, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 위험 관리 계획서', '계획서', to_date('2022-07-27'), 8, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 변경 제어 문서', '명세서', to_date('2022-08-11'), 9, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 보고서', '명세서', to_date('2022-08-13'), 9, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 배포 및 운영 문서', '명세서', to_date('2022-08-17'),10, 2);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, '크롤링 프로그램 유지 보수 문서', '명세서', to_date('2022-09-01'), 10, 2);


insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 요구사항 명세서', '명세서', to_date('2022-03-15'), 11, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 기술 명세서', '명세서', to_date('2022-03-23'), 11, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 화면 설계서', '설계서', to_date('2022-04-05'), 12, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 데이터베이스 설계서', '설계서', to_date('2022-04-26'), 12, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 소스코드', '데이터', to_date('2022-07-18'), 13, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 위험 관리 계획서', '계획서', to_date('2022-07-27'), 13, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 변경 제어 문서', '명세서', to_date('2022-08-11'), 14, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 보고서', '명세서', to_date('2022-08-13'), 14, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 배포 및 운영 문서', '명세서', to_date('2022-08-17'), 15, 3);
insert into product (productSeq, productName, content, productDate, employeeSeq, projectSeq)
values (productSeq.nextVal, 'POS프로그램 유지 보수 문서', '명세서', to_date('2022-09-01'), 15, 3);


-------------------------------------------------------------------------------------------------------------------------


--파일


insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 1, '금융 프로젝트 요구사항 명세서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 2, '금융 프로젝트 기술 명세서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 3, '금융 프로젝트 화면 설계서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 4, '금융 프로젝트 데이터베이스 설계서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 5, '금융 프로젝트 소스코드');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 6, '금융 프로젝트 위험 관리 계획서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 7, '금융 프로젝트 변경 제어 문서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 8, '금융 프로젝트 보고서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 9, '금융 프로젝트 배포 및 운영 문서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 10, '금융 프로젝트 유지 보수 문서');


insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 11, '크롤링 프로그램 요구사항 명세서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 12, '크롤링 프로그램 기술 명세서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 13, '크롤링 프로젝트 화면 설계서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 14, '크롤링 프로젝트 데이터베이스 설계서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 15, '크롤링 프로젝트 소스코드');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 16, '크롤링 프로젝트 위험 관리 계획서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 17, '크롤링 프로젝트 변경 제어 문서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 18, '크롤링 프로젝트 보고서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 19, '크롤링 프로젝트 배포 및 운영 문서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 20, '크롤링 프로젝트 유지 보수 문서');



insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 21, 'POS프로젝트 요구사항 명세서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 22, 'POS프로젝트 기술 명세서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 23, 'POS프로젝트 화면 설계서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 24, 'POS프로젝트 데이터베이스 설계서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 25, 'POS프로젝트 소스코드');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 26, 'POS프로젝트 위험 관리 계획서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 27, 'POS프로젝트 변경 제어 문서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 28, 'POS프로젝트 보고서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 29, 'POS프로젝트 배포 및 운영 문서');
insert into productFile (fileSeq, productSeq, fileName) values (fileSeq.nextVal, 30, 'POS프로젝트 유지 보수 문서');


--Sign

--1번 플젝
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '협력 기업 결재 요청합니다.', '협력 기업의 결재 안건입니다. 승인 부탁드립니다.', '2022-01-04', '2022-01-07', 'y', 2, 1);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '리소스 확보 결재 요청합니다.', '장비 확보 결재 요청합니다.', '2022-02-15', '2022-02-17', 'y', 2, 1);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '요구사항 변경 요청입니다.', '클라이언트의 요구사항 변경 요청입니다. 승인 부탁드립니다.', '2022-02-16', '2022-02-17', 'y', 2, 1);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '프로토타입 결재 요청입니다.', '프로토타입에 대한 검토 및 승인 요청입니다.확인 부탁드립니다.', '2022-03-19', '2022-03-20', 'n', 3, 1);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '테스트 계획에 대한 승인 요청입니다.', '테스트 계획 검토 부탁드립니다.', '2022-04-11', '2022-04-14', 'y', 4, 1);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '릴리즈 결재 요청입니다.', '소프트웨어 배보를 위한 결재 요청입니다.', '2022-05-23', '2022-05-24', 'y', 5, 1);

--2번 플젝
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '협력 기업 결재 요청합니다.', '협력 기업의 결재 안건입니다. 승인 부탁드립니다.', '2022-01-04', '2022-01-07', 'y', 7, 2);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '리소스 확보 결재 요청합니다.', '장비 확보 결재 요청합니다.', '2022-02-15', '2022-02-17', 'y', 7, 2);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '요구사항 변경 요청입니다.', '클라이언트의 요구사항 변경 요청입니다. 승인 부탁드립니다.', '2022-02-16', '2022-02-17', 'y', 7, 2);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '프로토타입 결재 요청입니다.', '프로토타입에 대한 검토 및 승인 요청입니다.확인 부탁드립니다.', '2022-03-19', '2022-03-20', 'n', 8, 2);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '테스트 계획에 대한 승인 요청입니다.', '테스트 계획 검토 부탁드립니다.', '2022-04-11', '2022-04-14', 'y', 9, 2);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '릴리즈 결재 요청입니다.', '소프트웨어 배보를 위한 결재 요청입니다.', '2022-05-23', '2022-05-24', 'y', 10, 2);

--3번 플젝
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '협력 기업 결재 요청합니다.', '협력 기업의 결재 안건입니다. 승인 부탁드립니다.', '2022-01-04', '2022-01-07', 'y', 12, 3);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '리소스 확보 결재 요청합니다.', '장비 확보 결재 요청합니다.', '2022-02-15', '2022-02-17', 'y', 12, 3);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '요구사항 변경 요청입니다.', '클라이언트의 요구사항 변경 요청입니다. 승인 부탁드립니다.', '2022-02-16', '2022-02-17', 'y', 12, 3);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '프로토타입 결재 요청입니다.', '프로토타입에 대한 검토 및 승인 요청입니다.확인 부탁드립니다.', '2022-03-19', '2022-03-20', 'n', 13, 3);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '테스트 계획에 대한 승인 요청입니다.', '테스트 계획 검토 부탁드립니다.', '2022-04-11', '2022-04-14', 'y', 14, 3);
insert into sign (signSeq, title, content, signDate, signOkDate, signOk, employeeSeq, projectSeq) 
values (signSeq.nextVal, '릴리즈 결재 요청입니다.', '소프트웨어 배보를 위한 결재 요청입니다.', '2022-05-23', '2022-05-24', 'y', 15, 3);




--notice

--전체
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'보안 강화 조치 안내', 
'2022-03-30', 
'안녕하세요, 최근 사이버 보안에 대한 위협이 증가하고 있어 저희 회사의 보안을 강화하기 위해 몇 가지 조치를 취하고자 합니다. 모든 직원은 비밀번호를 정기적으로 변경해야 하며, 강력한 암호 조합을 사용해야 합니다. 또한, 외부 이메일의 첨부 파일을 열거나 의심스러운 링크를 클릭하지 말아주시기 바랍니다. 보안에 대한 자세한 안내는 IT부서에서 이메일을 통해 제공될 예정입니다. 협조해 주시기 바랍니다.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'근로시간 조정 안내', 
'2022-04-10', 
'안녕하세요, 모든 직원 여러분께 알려드립니다. 최근 업무 부담이 증가하였고, 직원들의 근로 시간을 더욱 효율적으로 조정하기 위해 시간 조정 정책을 도입하게 되었습니다. 이에 따라 출근 시간이 조정되었으니, 개별적으로 업무 담당자와 상의하여 변경된 근로시간에 맞춰 출퇴근하시기 바랍니다. 이 조치는 업무 집중도와 생산성 향상을 위함이니 많은 협조 부탁드립니다.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'사내 인트라넷 서비스 개선 안내', 
'2022-04-15', 
'안녕하세요, 저희 회사의 내부 커뮤니케이션 및 정보 공유를 원활하게 하기 위해 사내 인트라넷 서비스를 개선하였습니다. 새로운 기능과 사용자 친화적인 인터페이스가 도입되었으며, 사내 문서, 공지사항, 프로젝트 정보 등을 효율적으로 관리할 수 있습니다. 모든 직원은 개인 계정으로 로그인하여 서비스를 이용하실 수 있습니다. 자세한 사용법과 접속 방법은 IT부서에서 안내해 드릴 예정입니다.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'휴가 신청 절차 변경 안내', 
'2022-05-11', 
'안녕하세요, HR팀입니다. 휴가 신청 절차에 변경이 있었음을 알려드립니다. 이제부터 휴가 신청은 사내 인트라넷의 "휴가 신청" 메뉴를 통해 온라인으로 진행하셔야 합니다. 이전처럼 종이로 작성하여 제출하는 방식은 사용되지 않을 예정이니 참고하시기 바랍니다. 휴가 신청 방법과 절차에 대한 상세 안내는 인트라넷에서 확인하실 수 있습니다.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'네트워크 점검 예정 안내', 
'2022-06-07', 
'안녕하세요, IT부서입니다. 네트워크 시스템의 안정성을 확보하기 위해 정기적인 점검을 실시할 예정입니다. 점검 일정은 다음과 같습니다: 일자: 2022년 3월 15일 (화요일). 시간: 오전 9시부터 오후 1시까지. 점검 중에는 네트워크 연결이 일시적으로 중단될 수 있으므로, 업무에 참고하시기 바랍니다. 점검이 완료되면 시스템이 정상적으로 복구될 것입니다. 혹시 점검에 관련하여 궁금한 사항이 있으시면 IT부서로 문의해 주세요. 감사합니다.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'사내 행사 안내 - 기업 송년 파티', 
'2022-11-30', 
'안녕하세요, 회사 행사 담당자입니다. 올해의 마무리를 잘 맞이하고자 기업 송년 파티를 개최할 예정입니다. 날짜는 12월 20일(목) 오후 6시부터 진행될 예정이며, 장소는 본사 식당입니다. 음식과 음료가 제공되며, 간단한 이벤트와 추첨을 통해 상품도 준비되어 있습니다. 참석 여부를 12월 10일까지 행사 담당자에게 알려주시기 바랍니다. 많은 참석 부탁드립니다.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'급여 정산 일정 안내', 
'2022-12-15', 
'이번 달 급여 정산은 다음 주 금요일에 이루어질 예정입니다. 급여 관련 문의 사항은 인사팀으로 연락해주세요.',
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'신입사원 교육 일정 공지', 
'2023-02-04', 
'신입사원 교육이 다음 주 월요일부터 시작됩니다. 모든 신입사원은 정해진 장소에 모여주세요.', 
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'긴급 서버 점검 안내', 
'2023-04-08', 
'긴급 서버 점검이 예정되어 있습니다. 점검 시간 동안 일시적으로 서비스 이용이 불가능할 수 있습니다.', 
'전체',
100);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'사내 홍보 행사 일정 안내', 
'2023-05-13', 
'사내 홍보 행사가 다음 달에 열릴 예정입니다. 행사에 참석하고 싶은 분들은 사전에 등록해주시기 바랍니다.', 
'전체',
100);

-- 팀내 공지사항
-- 1팀
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'주간 진행 상황 보고 안내', 
'2022-01-10', 
'안녕하세요, 프로젝트 팀원 여러분! 이번 주에는 우리 프로젝트의 진행 상황을 공유하고자 합니다. 모든 팀원은 자신이 맡은 업무에 대한 진행 상황을 사내 메신저를 통해 보고해주시길 바랍니다. 감사합니다.',
'팀별',
1);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'변경 사항 관련 미팅 일정 안내', 
'2022-02-28', 
'안녕하세요, 프로젝트 팀원 여러분! 중요한 변경 사항에 대한 논의를 위해 미팅을 예정하였습니다. 다음은 미팅 일정입니다. 일자: 2022년 3월 20일 (월요일). 시간: 오전 10시. 장소: 회의실 A. 모든 팀원은 해당 일정에 참석하여 변경 사항에 대한 의견을 공유하고, 필요한 조치 사항을 논의해 주시기 바랍니다. 미팅 준비물이 있는 경우 미리 준비하여 참석해 주세요. 혹시 일정 상 충돌이 있거나 참석에 어려움이 있는 경우 미리 연락해 주시기 바랍니다. 감사합니다.',
'팀별',
1);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'팀 내 커뮤니케이션 도구 변경 안내', 
'2022-03-05', 
'안녕하세요, 프로젝트 팀원 여러분. 저희 팀의 커뮤니케이션 도구를 변경하기로 결정되었습니다. 기존에 사용하던 채팅 앱에서 프로젝트 관리 및 협업을 더욱 효율적으로 진행할 수 있는 플랫폼으로 전환합니다. 변경된 도구에 대한 사용법 및 접근 방법은 따로 안내드리겠습니다. 변경 사항에 대한 이해와 협조를 부탁드리며, 새로운 도구를 통해 더 원활한 소통과 협업을 이루어나가길 기대합니다. 추가 문의사항이 있으면 언제든지 문의해주세요. 감사합니다.',
'팀별',
1);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'작업 우선순위 조정 안내', 
'2022-04-27', 
'팀 내 작업의 우선순위가 조정되었습니다. 각 팀원은 새로운 우선순위에 따라 작업을 조정해야 합니다.', 
'팀별',
1);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'클라이언트 미팅 날짜 변경 안내', 
'2022-05-15', 
'안녕하세요, 프로젝트 팀원 여러분. 7월 20일로 예정되어있던 클라이언트 미팅이 7월 23일로 변경되었음을 알려드립니다. 감사합니다.',
'팀별',
1);

--2팀
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'주간 진행 상황 보고 안내', 
'2022-03-10', 
'안녕하세요, 프로젝트 팀원 여러분! 이번 주에는 우리 프로젝트의 진행 상황을 공유하고자 합니다. 모든 팀원은 자신이 맡은 업무에 대한 진행 상황을 사내 메신저를 통해 보고해주시길 바랍니다. 감사합니다.',
'팀별',
6);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'변경 사항 관련 미팅 일정 안내', 
'2022-03-28', 
'안녕하세요, 프로젝트 팀원 여러분! 중요한 변경 사항에 대한 논의를 위해 미팅을 예정하였습니다. 다음은 미팅 일정입니다. 일자: 2022년 3월 20일 (월요일). 시간: 오전 10시. 장소: 회의실 A. 모든 팀원은 해당 일정에 참석하여 변경 사항에 대한 의견을 공유하고, 필요한 조치 사항을 논의해 주시기 바랍니다. 미팅 준비물이 있는 경우 미리 준비하여 참석해 주세요. 혹시 일정 상 충돌이 있거나 참석에 어려움이 있는 경우 미리 연락해 주시기 바랍니다. 감사합니다.',
'팀별',
6);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'팀 내 커뮤니케이션 도구 변경 안내', 
'2022-04-05', 
'안녕하세요, 프로젝트 팀원 여러분. 저희 팀의 커뮤니케이션 도구를 변경하기로 결정되었습니다. 기존에 사용하던 채팅 앱에서 프로젝트 관리 및 협업을 더욱 효율적으로 진행할 수 있는 플랫폼으로 전환합니다. 변경된 도구에 대한 사용법 및 접근 방법은 따로 안내드리겠습니다. 변경 사항에 대한 이해와 협조를 부탁드리며, 새로운 도구를 통해 더 원활한 소통과 협업을 이루어나가길 기대합니다. 추가 문의사항이 있으면 언제든지 문의해주세요. 감사합니다.',
'팀별',
6);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'작업 우선순위 조정 안내', 
'2022-05-27', 
'팀 내 작업의 우선순위가 조정되었습니다. 각 팀원은 새로운 우선순위에 따라 작업을 조정해야 합니다.', 
'팀별',
6);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'클라이언트 미팅 날짜 변경 안내', 
'2022-07-15', 
'안녕하세요, 프로젝트 팀원 여러분. 7월 20일로 예정되어있던 클라이언트 미팅이 7월 23일로 변경되었음을 알려드립니다. 감사합니다.',
'팀별',
6);

--3팀
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'주간 진행 상황 보고 안내', 
'2022-03-10', 
'안녕하세요, 프로젝트 팀원 여러분! 이번 주에는 우리 프로젝트의 진행 상황을 공유하고자 합니다. 모든 팀원은 자신이 맡은 업무에 대한 진행 상황을 사내 메신저를 통해 보고해주시길 바랍니다. 감사합니다.',
'팀별',
11);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'변경 사항 관련 미팅 일정 안내', 
'2022-03-28', 
'안녕하세요, 프로젝트 팀원 여러분! 중요한 변경 사항에 대한 논의를 위해 미팅을 예정하였습니다. 다음은 미팅 일정입니다. 일자: 2022년 3월 20일 (월요일). 시간: 오전 10시. 장소: 회의실 A. 모든 팀원은 해당 일정에 참석하여 변경 사항에 대한 의견을 공유하고, 필요한 조치 사항을 논의해 주시기 바랍니다. 미팅 준비물이 있는 경우 미리 준비하여 참석해 주세요. 혹시 일정 상 충돌이 있거나 참석에 어려움이 있는 경우 미리 연락해 주시기 바랍니다. 감사합니다.',
'팀별',
11);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'팀 내 커뮤니케이션 도구 변경 안내', 
'2022-04-05', 
'안녕하세요, 프로젝트 팀원 여러분. 저희 팀의 커뮤니케이션 도구를 변경하기로 결정되었습니다. 기존에 사용하던 채팅 앱에서 프로젝트 관리 및 협업을 더욱 효율적으로 진행할 수 있는 플랫폼으로 전환합니다. 변경된 도구에 대한 사용법 및 접근 방법은 따로 안내드리겠습니다. 변경 사항에 대한 이해와 협조를 부탁드리며, 새로운 도구를 통해 더 원활한 소통과 협업을 이루어나가길 기대합니다. 추가 문의사항이 있으면 언제든지 문의해주세요. 감사합니다.',
'팀별',
11);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'작업 우선순위 조정 안내', 
'2022-05-27', 
'팀 내 작업의 우선순위가 조정되었습니다. 각 팀원은 새로운 우선순위에 따라 작업을 조정해야 합니다.', 
'팀별',
11);
insert into notice (noticeSeq, title, NoticeDate, content, noticeType, employeeSeq) 
values (noticeSeq.nextVal, 
'클라이언트 미팅 날짜 변경 안내', 
'2022-07-15', 
'안녕하세요, 프로젝트 팀원 여러분. 7월 20일로 예정되어있던 클라이언트 미팅이 7월 23일로 변경되었음을 알려드립니다. 감사합니다.',
'팀별',
11);







/* 공휴일 */

--2022년

insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '신정', '2022-01-01'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '설날', '2022-02-01'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '설날 연휴', '2022-02-02'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '설날 연휴', '2022-02-03'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '삼일절', '2022-03-01'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '어린이날', '2022-05-05'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '석가탄신일', '2022-05-08'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '현충일', '2022-06-06'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '광복절', '2022-08-15'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '추석', '2022-09-10'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '추석 연휴', '2022-09-11'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '추석 연휴', '2022-09-12'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '개천절', '2022-10-03'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '한글날', '2022-10-09'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '성탄절', '2022-12-25'
);



--2023년

insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '신정', '2023-01-01'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '설날', '2023-02-11'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '설날 대체공휴일', '2023-02-12'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '삼일절', '2023-03-01'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '어린이날', '2023-05-05'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '석가탄신일', '2023-05-09'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '현충일', '2023-06-06'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '광복절', '2023-08-15'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '추석', '2023-09-13'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '추석 대체공휴일', '2022-09-14'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '추석 대체공휴일', '2022-09-15'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '개천절', '2023-10-03'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '한글날', '2023-10-09'
);
insert into holiday (holidaySeq, name, holidayDate) 
values (holidaySeq.nextVal, '성탄절', '2023-12-25'
);


INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '프로젝트 계획', '2022-01-01', '2022-01-10', 100, 1, 1);


INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '클라이언트 요구조건 취합', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 취합 분석', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '시스템 환경 분석', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구사항 기능 분석', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '요구분석 검토', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '스토리보드 화면 설계', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '개발기능정의', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, 'DB설계', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '메인 개발', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '1차 수정 개발', '2022-01-01', '2022-01-10', 100, 1, 1);


INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '2차 수정 개발', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트 계획서 작성', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '단위테스트', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '테스트리포트', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '디버깅', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '작업사항 고객검토', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '고객 요청반영', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 릴리즈', '2022-01-01', '2022-01-10', 100, 1, 1);

INSERT INTO wbs (wbsSeq, wbsName, startDate, endDate, percent, projectSeq, employeeSeq)
VALUES (wbsSeq.nextVal, '서비스 안정화', '2022-01-01', '2022-01-10', 100, 1, 1);



commit;


select * from product;
select * from productfile;
select * from project;
select * from register;
select * from employee;

update employee set lv=2 where employeeseq = 1;

commit;

select * from holiday;



select distinct pj.projectseq, pj.name from project pj
inner join product p on pj.projectseq= p.projectseq
inner join employee e on e.employeeseq=p.employeeseq
where p.employeeseq=6;





























