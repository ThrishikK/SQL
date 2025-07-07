-- OVER
SELECT *,
AVG(salary) OVER() AS avg_all ,
MIN(salary) OVER() AS min_all ,
MAX(salary) OVER() AS max_all ,
SUM(salary) OVER() AS sum_all 
FROM employee_salaries

-- PARTITION
SELECT *,
AVG(salary) OVER(PARTITION BY city) AS city_avg,
MIN(salary) OVER(PARTITION BY city) AS city_min,
MAX(salary) OVER(PARTITION BY city) AS city_max,
SUM(salary) OVER(PARTITION BY city) AS city_sum,
COUNT(*) OVER(PARTITION BY city) AS city_emp_count
FROM employee_salaries

-- COMBINATION OF ABOVE
SELECT *,
AVG(salary) OVER() AS avg_all ,
AVG(salary) OVER(PARTITION BY city) AS city_avg,
MIN(salary) OVER() AS min_all ,
MIN(salary) OVER(PARTITION BY city) AS city_min,
MAX(salary) OVER() AS max_all ,
MAX(salary) OVER(PARTITION BY city) AS city_max,
SUM(salary) OVER() AS sum_all ,
SUM(salary) OVER(PARTITION BY city) AS city_sum,
COUNT(*) OVER() AS count_all,
COUNT(*) OVER(PARTITION BY city) AS city_emp_count 

FROM employee_salaries

-- RANK
-- 1 
SELECT 
   *,RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM
    employee_salaries
-- 2 USING TO RANKS
SELECT 
    employee_name,department,salary,
        RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS department_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM
    employee_salaries

--  ROW_NUMBER  DENSE_RANK
    SELECT 
   employee_name,department,salary,
      ROW_NUMBER() OVER(ORDER BY salary DESC) AS row__number,

   RANK() OVER(ORDER BY salary DESC) AS salary_rank,
      DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_salary_rank

FROM
    employee_salaries

-- FIRST()
SELECT 
    *,
    FIRST_VALUE(employee_name) OVER (ORDER BY salary DESC) as highest_income_person
FROM
    employee_salaries

-- OVERALL
SELECT 
    id,employee_name,department,salary,
    FIRST_VALUE(employee_name) OVER (ORDER BY salary DESC) as highest_income_person,
        FIRST_VALUE(id) OVER (ORDER BY salary DESC) as highest_income_id,
        FIRST_VALUE(employee_name) OVER (ORDER BY salary ASC) as lowest_income_person,
        FIRST_VALUE(id) OVER (ORDER BY salary ASC) as lowest_income_id

FROM
    employee_salaries    

    -- OVERALL AND GROUPING
    SELECT 
    id,employee_name,department,salary,
    -- OVERALL 
        FIRST_VALUE(employee_name) OVER (ORDER BY salary DESC) as overall_highest_income_person,
        FIRST_VALUE(id) OVER (ORDER BY salary DESC) as overall_highest_income_id,
        FIRST_VALUE(employee_name) OVER (ORDER BY salary ASC) as overall_lowest_income_person,
        FIRST_VALUE(id) OVER (ORDER BY salary ASC) as overall_lowest_income_id,
        -- GROUPING
 FIRST_VALUE(employee_name) OVER (PARTITION BY department ORDER BY salary DESC) as dept_highest_income_person,
        FIRST_VALUE(id) OVER (PARTITION BY department ORDER BY salary DESC) as dept_highest_income_id,
        FIRST_VALUE(employee_name) OVER (PARTITION BY department ORDER BY salary ASC) as dept_lowest_income_person,
        FIRST_VALUE(id) OVER (PARTITION BY department ORDER BY salary ASC) as dept_lowest_income_id
FROM
    employee_salaries


    -- LAG
    SELECT 
    id, employee_name, department, salary,
    LAG(salary) OVER(ORDER BY salary DESC) AS prev_row_salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC)  AS diff_prev_row
FROM
    employee_salaries

    --DATE DIFFERENCES USING LAG
    SELECT 
  *,
  LAG(DOB) OVER (PARTITION BY country  ORDER BY DOB) AS prev_row_dob,
  DATEDIFF(DOB, LAG(DOB) OVER (PARTITION BY country ORDER BY DOB)) AS age_gap_days
FROM actors;

-- WITH KEYWORD
WITH actors_dob AS (    SELECT 
  *,    LAG(name) OVER (PARTITION BY country  ORDER BY DOB) AS prev_row_name,

  LAG(DOB) OVER (PARTITION BY country  ORDER BY DOB) AS prev_row_dob,

  DATEDIFF(DOB, LAG(DOB) OVER (PARTITION BY country ORDER BY DOB)) AS age_gap_days
FROM actors)

SELECT * FROM actors_dob
ORDER BY age_gap_days