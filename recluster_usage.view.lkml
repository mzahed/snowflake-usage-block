view: recluster_usage {
  derived_table: {
    sql: SELECT * FROM ACCOUNT_USAGE.AUTOMATIC_CLUSTERING_HISTORY
      ;;
  }

  dimension_group: start_time {
    type: time
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }

  dimension: num_bytes_reclustered {
    type: number
    sql: ${TABLE}."NUM_BYTES_RECLUSTERED" ;;
  }

  dimension: num_rows_reclustered {
    type: number
    sql: ${TABLE}."NUM_ROWS_RECLUSTERED" ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}."TABLE_ID" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  measure: total_credits_used {
    type: sum
    sql: ${credits_used};;
   }
}
