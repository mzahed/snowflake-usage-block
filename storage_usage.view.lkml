view: storage_usage {
  sql_table_name:
  SNOWFLAKE.ACCOUNT_USAGE.DATABASE_STORAGE_USAGE_HISTORY;;

  dimension: database_id {
    type: number
    sql: ${TABLE}.DATABASE_ID ;;
  }

  dimension_group: deleted {
    #if this is exposed - will need to include it table selection logic
    type: time
    hidden: yes
    sql: ${TABLE}.DELETED ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.DATABASE_NAME ;;
  }

  dimension_group: usage {
    type: time
    datatype: date
    timeframes: [date,week,week_of_year,day_of_week,day_of_month,month_num,month,quarter,year]
    convert_tz: no
    sql: ${TABLE}.USAGE_DATE ;;
    alias: [read]
  }

  dimension: storage_bytes {
    type: number
    sql: ${TABLE}.AVERAGE_DATABASE_BYTES;;
  }
  dimension: failsafe_bytes {
    type: number
    sql: ${TABLE}.AVERAGE_FAILSAFE_BYTES;;
  }

  dimension: storage_tb {
    type: number
    sql: ${storage_bytes} / power(1024,4) ;;
  }


  dimension: failsafe_tb {
    type: number
    sql: ${failsafe_bytes} / power(1024,4) ;;
  }

  dimension: total_tb {
    sql: ${storage_tb} + ${failsafe_tb};;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: billable_tb {
    type: average
    sql: ${total_tb};;
  }
  
  measure: total_tb {
    type: sum
    sql: ${total_tb};;
  }

  measure: curr_mtd_billable_tb {
    type: average
    sql:  ${total_tb};;
    filters: {field: usage_date value: "this month"}
    value_format_name: decimal_4
  }

  measure: prior_mtd_billable_tb {
    type: average
    sql:  ${storage_tb} + ${failsafe_tb};;
    filters: {field: usage_date value: "last month"}
    value_format_name: decimal_4
  }
}
