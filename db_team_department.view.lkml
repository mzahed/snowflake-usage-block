view: db_team_department {
  derived_table: {
    sql: SELECT
      DISTINCT
      CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'DP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('CONTACT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EASE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EDO', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EIDATA', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EVENT_POC', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'DP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_AUTOMATIONS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'MC'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('GDPR', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'DATA PLATFORM'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MAILEVENTSINGEST', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENTS_PROCESS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('USAGE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'MC'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('RP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('IP_', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'IP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('GROWTH', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'GROWTH'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('REVOPS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'REVOPS'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('COMPLIANCE_BI', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SENDGRID', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EDA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MCA', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'MC'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MCD', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'MC'
      ELSE NULL END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       AS team_name,
        CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - EP - Technical Operations'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('CONTACT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EASE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EDO', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EIDATA', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'EI DATA'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('EVENT_POC', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - EP - Technical Operations'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_AUTOMATIONS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('DP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - EP - Technical Operations'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MAILEVENTSINGEST', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MC_SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENTS_PROCESS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SEGMENT', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('USAGE', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('RP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('GROWTH', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - CL'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('IP', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('REVOPS', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - Revenue Operations'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('COMPLIANCE_BI', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MCA', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('SENDGRID', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - IT & Business Systems'
      ELSE CASE WHEN storage_usage.DATABASE_NAME LIKE (CAST('%' AS VARCHAR) || CAST(REPLACE(REPLACE(REPLACE('MCD', '^', '^^'), '%', '^%'), '_', '^_') AS VARCHAR) || CAST('%' AS VARCHAR)) ESCAPE '^' THEN 'SG - MGP'
      ELSE NULL END
      END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       END
       AS department_name,
        storage_usage.DATABASE_NAME  AS database
      FROM SNOWFLAKE.ACCOUNT_USAGE.DATABASE_STORAGE_USAGE_HISTORY AS storage_usage
      GROUP BY 1,2,3
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

  dimension: database {
    type: string
    sql: ${TABLE}."DATABASE" ;;
  }
}
