connection: "ldeploy_the_look"

include: "/dashboards/vega_dashboard.dashboard"
include: "/views/*"

explore: sample_1 {hidden:yes}
explore: average_session_duration_overall {hidden:yes}
explore: average_session_duration_subject {hidden:yes}
explore: sales_data {hidden:yes}
explore: sales_data_latlong {hidden:yes}
explore: usage_by_time_of_day {hidden:yes}
explore: orders {}

explore: orders_extended {
  join: users {
    sql_on: ${orders_extended.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

view: sample_1 {

  sql_table_name: `aminton-sandbox-ps.sample_data.sample_1`;;

  dimension: a {
    type: string
    sql: ${TABLE}.a ;;
  }

  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
  }

  dimension: c {
    type: string
    sql: ${TABLE}.c ;;
  }

  dimension: d {
    type: string
    sql: ${TABLE}.d ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.w ;;
  }

  measure: total_w {
    type: sum
    sql: ${w} ;;
  }

  measure: average_w {
    type: average
    sql: ${w} ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  dimension: z {
    type: number
    sql: ${TABLE}.z ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: average_session_duration_overall {
  sql_table_name: `aminton-sandbox-ps.sample_data.average_session_duration_overall`;;

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  measure: total_avg_duration {
    type: sum
    sql: ${avg_duration} ;;
  }

  measure: average_avg_duration {
    type: average
    sql: ${avg_duration} ;;
  }

  dimension: dateid {
    type: date
    sql: ${TABLE}.dateid ;;
    datatype: date
    convert_tz: no
  }

  dimension: n_sessions {
    type: number
    sql: ${TABLE}.n_sessions ;;
  }

  dimension: perc_sessions {
    type: number
    sql: ${TABLE}.perc_sessions ;;
  }

  dimension: res {
    type: string
    sql: ${TABLE}.res ;;
  }

  dimension: userroletype {
    type: string
    sql: ${TABLE}.userroletype ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: average_session_duration_subject {
  sql_table_name: `aminton-sandbox-ps.sample_data.average_session_duration_subject`;;

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  measure: total_avg_duration {
    type: sum
    sql: ${avg_duration} ;;
  }

  measure: average_avg_duration {
    type: average
    sql: ${avg_duration} ;;
  }

  dimension: dateid {
    type: date
    sql: ${TABLE}.dateid ;;
    datatype: date
    convert_tz: no
  }

  dimension: n_sessions {
    type: number
    sql: ${TABLE}.n_sessions ;;
  }

  dimension: perc_sessions {
    type: number
    sql: ${TABLE}.perc_sessions ;;
  }

  dimension: res {
    type: string
    sql: ${TABLE}.res ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: userroletype {
    type: string
    sql: ${TABLE}.userroletype ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: sales_data {

  sql_table_name: `aminton-sandbox-ps.sample_data.sales_data`;;

  dimension: n_units {
    type: number
    sql: ${TABLE}.n_units ;;
  }

  measure: total_n_units {
    type: sum
    sql: ${n_units} ;;
  }

  measure: average_n_units {
    type: average
    sql: ${n_units} ;;
  }

  dimension: prod_code {
    type: string
    sql: ${TABLE}.prod_code ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: sales_data_latlong {

  sql_table_name: `aminton-sandbox-ps.sample_data.sales_data_latlong`;;

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: n_units {
    type: number
    sql: ${TABLE}.n_units ;;
  }

  dimension: percent_profit {
    type: number
    sql: ${TABLE}.percent_profit ;;
  }

  measure: total_percent_profit {
    type: sum
    sql: ${percent_profit} ;;
  }

  measure: average_percent_profit {
    type: average
    sql: ${percent_profit} ;;
  }

  dimension: prod_code {
    type: string
    sql: ${TABLE}.prod_code ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_date ;;
  }

  dimension_group: sale_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_month ;;
  }

  dimension_group: sale_week {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_week ;;
  }

  dimension_group: sale_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_units {
    type: sum
    sql: ${n_units} ;;
  }
}

view: usage_by_time_of_day {
  sql_table_name: `aminton-sandbox-ps.sample_data.usage_by_time_of_day`;;

  dimension: weekday {
    type: string
    sql: CASE ${dow} WHEN 1 THEN 'Monday' WHEN 2 THEN 'Tuesday' WHEN 3 THEN 'Wednesday' WHEN 4 THEN 'Thursday' WHEN 5 THEN 'Friday' WHEN 6 THEN 'Saturday' WHEN 7 THEN 'Sunday' END ;;
  }

  dimension: weekday_order {
    type: number
    sql: ${dow} ;;
  }

  dimension: dow {
    type: number
    sql: ${TABLE}.dow ;;
  }

  measure: total_dow {
    type: sum
    sql: ${dow} ;;
  }

  measure: average_dow {
    type: average
    sql: ${dow} ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: n_users {
    type: number
    sql: ${TABLE}.n_users ;;
  }

  dimension: userroletype {
    type: string
    sql: ${TABLE}.userroletype ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
