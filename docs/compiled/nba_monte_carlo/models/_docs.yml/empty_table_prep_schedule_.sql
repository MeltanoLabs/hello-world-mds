

    with __dbt__cte__raw_schedule as (
SELECT *
FROM '/tmp/data_catalog/psa/nba_schedule_2023/*.parquet'
),  __dbt__cte__prep_schedule as (
SELECT *
FROM __dbt__cte__raw_schedule
)SELECT COALESCE(COUNT(*),0) AS records
    FROM __dbt__cte__prep_schedule
    HAVING COUNT(*) = 0

