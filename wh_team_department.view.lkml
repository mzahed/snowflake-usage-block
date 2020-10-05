view: wh_team_department {
  derived_table: {
    sql: SELECT
 DISTINCT
warehouse_metering_history.WAREHOUSE_NAME  AS warehouse,
CASE 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'DP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('CONTACT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EASE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EDO', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EIDATA', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EVENT_POC', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'DP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_AUTOMATIONS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'MC' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('GDPR', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'DATA PLATFORM' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MAILEVENTSINGEST', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENTS_PROCESS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('USAGE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'MC' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('RP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('IP_', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'IP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('GROWTH', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GROWTH' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('REVOPS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'REVOPS' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('COMPLIANCE_BI', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA'
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('AAI', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'AAI'
    
ELSE NULL 
END AS team_name,
CASE 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - EP - Technical Operations' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('CONTACT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EASE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EDO', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EIDATA', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EVENT_POC', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - EP - Technical Operations' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_AUTOMATIONS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - EP - Technical Operations' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MAILEVENTSINGEST', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENTS_PROCESS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('USAGE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('RP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('GROWTH', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - CL' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('IP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('REVOPS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - Revenue Operations' 
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('COMPLIANCE_BI', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems'
    WHEN warehouse_metering_history.WAREHOUSE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('AAI', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN '199 - Compliance Fraud'
    
ELSE NULL 
END AS department_name
FROM SNOWFLAKE.ACCOUNT_USAGE.WAREHOUSE_METERING_HISTORY  AS warehouse_metering_history
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
}
