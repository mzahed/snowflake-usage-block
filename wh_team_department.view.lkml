view: wh_team_department {
  derived_table: {
    sql: SELECT
DISTINCT
warehouse_metering_history.WAREHOUSE_NAME  AS warehouse,
warehouse_mapping.team as team_name,
warehouse_mapping.department as department_name,
warehouse_mapping.cogs_rd as cogs_rd
FROM SNOWFLAKE.ACCOUNT_USAGE.WAREHOUSE_METERING_HISTORY  AS warehouse_metering_history
LEFT JOIN "SNOWFLAKE_REF"."REF_TEAM_MAPPINGS"."WAREHOUSE_MAPPING" warehouse_mapping on warehouse_metering_history.WAREHOUSE_NAME = warehouse_mapping.WAREHOUSE_NAME
  ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}."TEAM_NAME" ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}."DEPARTMENT_NAME" ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."WAREHOUSE" ;;
  }
  
  dimension: cogs_rd {
    type: string
    sql: ${TABLE}."cogs_rd" ;;
  }
}
