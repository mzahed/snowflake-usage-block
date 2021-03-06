connection: "account_usage"

# include all the views
include: "*.view"

# include all the dashboards
include: "account_usage_dashboard.dashboard.lookml"

datagroup: snowflake_usage_block_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

named_value_format: conditional_to_millions {
  value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
}

persist_with: snowflake_usage_block_default_datagroup

explore: login_history {
}

explore: snowpipe {
join: db_team_department {
    sql_on: ${snowpipe.database} = ${db_team_department.database} ;;
    relationship: one_to_one
  }
}

explore: recluster_usage {
join: db_team_department {
    sql_on: ${recluster_usage.database_name} = ${db_team_department.database} ;;
    relationship: one_to_one
  }
}

explore: derived_db_storage {
join: db_team_department {
    sql_on: ${derived_db_storage.storage_usage_database_name} = ${db_team_department.database} ;;
    relationship: one_to_one
  }
}

explore: query_history {
  join: databases {
    type: left_outer
    sql_on: ${query_history.database_name} = ${databases.database_name} ;;
    relationship: many_to_one
  }

#   join: schemata {
#     type: left_outer
#     sql_on: ${databases.id} = ${schemata.id} ;;
#     relationship: one_to_many
#   }
}

# explore: schemata {
#   join: databases {
#     type: left_outer
#     sql_on: ${schemata.database_id} = ${databases.id} ;;
#     relationship: many_to_one
#   }
# }

explore: load_history {
  fields: [ALL_FIELDS*,-tables.table_name,-tables.id]
  join: tables {
    sql_on: ${load_history.table_id} = ${tables.id} ;;
    relationship: many_to_one
  }
}

explore: storage_usage {
join: db_team_department {
    sql_on: ${storage_usage.database_name} = ${db_team_department.database} ;;
    relationship: one_to_one
  }
  }

explore: warehouse_metering_history {
join: wh_team_department {
    sql_on: ${warehouse_metering_history.warehouse_name} = ${wh_team_department.warehouse} ;;
    relationship: one_to_one
  }
}

# explore: columns {}
#
# explore: databases {}
#
# explore: file_formats {}
#
# explore: functions {}
#
# explore: referential_constraints {}
#
# explore: sequences {}
#
# explore: stages {}
#
# explore: table_constraints {}
#
# explore: table_storage_metrics {}
#
# explore: tables {}
#
# explore: views {}
