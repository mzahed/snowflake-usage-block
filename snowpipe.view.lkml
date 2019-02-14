view: snowpipe {
  derived_table: {
    sql: select *
        from table(information_schema.pipe_usage_history(
          date_range_start=>dateadd('day',-180,current_date()),
          date_range_end=>current_date()))
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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

  dimension_group: start_time {
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

  set: detail {
    fields: [
      start_time_time,
      end_time_time,
      pipe_name,
      credits_used,
      bytes_inserted,
      files_inserted
    ]
  }
}
