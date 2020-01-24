view: derived_snowflake_ease_query {
  derived_table: {
    sql: SELECT * FROM "SNOWFLAKE"."ACCOUNT_USAGE"."QUERY_HISTORY" WHERE WAREHOUSE_NAME = 'EASE_PROD_QUERY_WH' AND start_time > '2020-01-23' ORDER BY end_time desc limit 500
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}."QUERY_TYPE" ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WAREHOUSE_SIZE" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."WAREHOUSE_TYPE" ;;
  }

  dimension: cluster_number {
    type: number
    sql: ${TABLE}."CLUSTER_NUMBER" ;;
  }

  dimension: query_tag {
    type: string
    sql: ${TABLE}."QUERY_TAG" ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}."EXECUTION_STATUS" ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}."ERROR_CODE" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }

  dimension_group: start_time {
    type: time
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: total_elapsed_time {
    type: number
    sql: ${TABLE}."TOTAL_ELAPSED_TIME" ;;
  }

  dimension: bytes_scanned {
    type: number
    sql: ${TABLE}."BYTES_SCANNED" ;;
  }

  dimension: rows_produced {
    type: number
    sql: ${TABLE}."ROWS_PRODUCED" ;;
  }

  dimension: compilation_time {
    type: number
    sql: ${TABLE}."COMPILATION_TIME" ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}."EXECUTION_TIME" ;;
  }

  dimension: queued_provisioning_time {
    type: number
    sql: ${TABLE}."QUEUED_PROVISIONING_TIME" ;;
  }

  dimension: queued_repair_time {
    type: number
    sql: ${TABLE}."QUEUED_REPAIR_TIME" ;;
  }

  dimension: queued_overload_time {
    type: number
    sql: ${TABLE}."QUEUED_OVERLOAD_TIME" ;;
  }

  dimension: transaction_blocked_time {
    type: number
    sql: ${TABLE}."TRANSACTION_BLOCKED_TIME" ;;
  }

  dimension: outbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: outbound_data_transfer_region {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: outbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_BYTES" ;;
  }

  dimension: inbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: inbound_data_transfer_region {
    type: string
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: inbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_BYTES" ;;
  }

  dimension: list_external_files_time {
    type: number
    sql: ${TABLE}."LIST_EXTERNAL_FILES_TIME" ;;
  }

  dimension: credits_used_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  set: detail {
    fields: [
      query_id,
      query_text,
      database_id,
      database_name,
      schema_id,
      schema_name,
      query_type,
      session_id,
      user_name,
      role_name,
      warehouse_id,
      warehouse_name,
      warehouse_size,
      warehouse_type,
      cluster_number,
      query_tag,
      execution_status,
      error_code,
      error_message,
      start_time_time,
      end_time_time,
      total_elapsed_time,
      bytes_scanned,
      rows_produced,
      compilation_time,
      execution_time,
      queued_provisioning_time,
      queued_repair_time,
      queued_overload_time,
      transaction_blocked_time,
      outbound_data_transfer_cloud,
      outbound_data_transfer_region,
      outbound_data_transfer_bytes,
      inbound_data_transfer_cloud,
      inbound_data_transfer_region,
      inbound_data_transfer_bytes,
      list_external_files_time,
      credits_used_cloud_services
    ]
  }
}
