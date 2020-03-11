view: snowpipe {
  derived_table: {
    sql: select pipe_usage_history.*,pipes.PIPE_CATALOG as database
        from "SNOWFLAKE"."ACCOUNT_USAGE".pipe_usage_history
        join "SNOWFLAKE"."ACCOUNT_USAGE"."PIPES" pipes on pipe_usage_history.pipe_name = pipes.pipe_name ;;
  }
  
  measure: total_credits_used {
    type: sum
    sql: ${credits_used};;
   }
   
   measure: total_files_inserted {
    type: sum
    sql: ${files_inserted};;
   }
   
   measure: total_bytes_inserted {
    type: sum
    sql: ${bytes_inserted};;
   }

  dimension_group: start {
    type: time
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
  }
  
  dimension: database {
    type: string
    sql: ${TABLE}."DATABASE" ;;
  }

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }

  dimension: bytes_inserted {
    type: number
    sql: ${TABLE}."BYTES_INSERTED" ;;
  }

  dimension: files_inserted {
    type: number
    sql: ${TABLE}."FILES_INSERTED" ;;
  }
  
  dimension: is_prior_month_mtd {
    type: yesno
    sql:  EXTRACT(month, ${start_raw}) = EXTRACT(month, current_timestamp()) - 1
      and ${start_raw} <= dateadd(month, -1, current_timestamp())  ;;
  }
  
  dimension: is_mtd {
    type: yesno
    sql:  ${start_day_of_month} <= extract('day', current_timestamp);;
  }

  measure: count {
    type: count
  }

  measure: average_credits_used {
    type: average
    sql:  ${credits_used} ;;
  }

  measure: current_mtd_credits_used {
    type: sum
    sql:  ${credits_used} ;;
    filters: {field: start_date value: "this month"}
#     value_format: "$0.000,\" K\""
  }

  measure: prior_mtd_credits_used {
    type: sum
    sql:  ${credits_used} ;;
    filters: {field: is_mtd value: "yes"}
    filters: {field: start_date value: "last month"}

  }
  
  measure: current_mtd_files_inserted {
    type: sum
    sql:  ${files_inserted} ;;
    filters: {field: start_date value: "this month"}
#     value_format: "$0.000,\" K\""
  }

  measure: prior_mtd_files_inserted {
    type: sum
    sql:  ${files_inserted} ;;
    filters: {field: is_mtd value: "yes"}
    filters: {field: start_date value: "last month"}

  }

}
