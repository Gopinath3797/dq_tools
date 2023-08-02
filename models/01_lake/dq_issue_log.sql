{{
  config(
    database = var('dbt_dq_tool_database', target.database),
    schema = var('dbt_dq_tool_schema', target.schema),
    materialized = 'incremental',
    on_schema_change = 'append_new_columns',
    full_refresh = false
  )
}}

--append new column
--disabled full refresh --> full refresh required manual droping

select   cast(null as {{ dbt.type_timestamp() }}) as check_timestamp
        ,cast(null as {{ dbt.type_string() }}) as table_name
        ,cast(null as {{ dbt.type_string() }}) as column_name
        ,cast(null as {{ dbt.type_string() }}) as ref_table
        ,cast(null as {{ dbt.type_string() }}) as ref_column
        ,cast(null as {{ dbt.type_string() }}) as dq_issue_type
        ,cast(null as {{ dbt.type_string() }}) as invocation_id
        ,cast(null as {{ dbt.type_string() }}) as dq_model
        ,cast(null as {{ dbt.type_string() }}) as severity
        ,cast(null as {{ dbt.type_string() }}) as kpi_category
        ,cast(null as {{ dbt.type_int() }}) as no_of_records
        ,cast(null as {{ dbt.type_int() }}) as no_of_records_scanned
        ,cast(null as {{ dbt.type_int() }}) as no_of_records_failed
        ,cast(null as {{ dbt.type_int() }}) as no_of_table_columns
        ,cast(null as {{ dbt.type_string() }}) as test_unique_id

where   1=0