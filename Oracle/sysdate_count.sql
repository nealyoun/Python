-- Count(column)의 경우, 해당 컬럼에 NULL이 있는 경우 건수에서 제외됨
-- commission_pct 에는 NULL이 아닌 건이 35건
-- department_id 에는 NULL이 1건 존재

select count(*)
     , count(first_name) -- null 값 없음
     , count(commission_pct) -- 다수의 null 값 존재
     , count(department_id) --null 값이 한개 존재
from employees;


select count(distinct employee_id)
     , count(distinct first_name)
     , count(distinct commission_pct)
from employees;

--Rownum
--쿼리 수행 후 반환되는 결과 집합의 로우 순번을 반환
--ex) where rownum < 10 -> 9건 반환
--where 절의 조건에 따라 로우를 걸러내고 최종 fetch 될 때 rownum은 1부터 순차적으로 부여
--즉, rownum = 1은 조건을 만족 1건 반환, but, rownum = 2는 조건을 만족하지 못함 0건 반환
--ex) rownum > 1, rownum > 2 => 0건 반환


--Sysdate
--오라클이 설치된 os의 현재 날짜와 시간을 반환
--SYSDATE가 현재 날짜와 시간이 아닌 UTC 혹은 GMT 시간이 반환된 (한국: UTC + 9hr)
--
--OS의 시간이 UTC (UNIX, LINUX 설치 default TZ(timezone)이 UTC) 이므로 설정 변경 필요
--=> MAC OS 도 포홤되는 듯?!

-- Check Time as System (System의 시각과 동일하게 출력된다.) 
SELECT SYSDATE, SYSTIMESTAMP FROM DUAL ;

-- Check DB Timezone Setup 
select DBTIMEZONE, SESSIONTIMEZONE FROM DUAL ;

-- Check Time as DB 
SELECT CURRENT_DATE, CURRENT_TIMESTAMP, LOCALTIMESTAMP FROM DUAL ;
