view: order_items {
  sql_table_name: `looker-private-demo.thelook.order_items`;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    hidden:  yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      hour,
      hour_of_day,
      time_of_day,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

# The customized timeframes, organized in the Explore field picker under the group label Created
  dimension: date_formatted {
    group_label: "Created"
    label: "Date"
    type: date_raw
    sql: ${created_date} ;;
    html: {{ rendered_value | date: "%b %d, %y" }};;
  }

  dimension: week_formatted {
    group_label: "Created"
    label: "Week"
    type: date_raw
    sql: ${created_week} ;;
    html: {{ rendered_value | date: "Week %U (%b %d)" }};;
  }

# The customized timeframes, organized in the Explore field picker under the group label Created
  # dimension: date_formatted {
  #   group_label: "LoBo Created type date_raw change test"
  #   type: date_raw
  #   label: "Date sql created_date"
  #   sql: ${created_date} ;;
  #   html: {{ rendered_value | date: "%b %d, %y" }};;
  # }

  # dimension: month_formatted_sqL_created_date {
  #   group_label: "LoBo Created type date_raw change test"
  #   type: date_raw
  #   label: "Month sql created_date"
  #   sql: ${created_date} ;;
  #   html: {{ rendered_value | date: "%B %Y" }};;
  # }

  # dimension: month_formatted_sqL_created_month {
  #   group_label: "LoBo Created type date_raw change test"
  #   type: date_raw
  #   label: "Month sql created_month"
  #   sql: ${created_month} ;;
  #   html: {{ rendered_value | date: "%B %Y" }};;
  # }

  # dimension: month_formatted_sqL_created_raw {
  #   group_label: "LoBo Created type date_raw change test"
  #   type: date_raw
  #   label: "Month sql created_raw"
  #   sql: ${created_raw} ;;
  #   html: {{ rendered_value | date: "%B %Y" }};;
  # }

  # dimension: week_formatted {
  #   group_label: "LoBo Created type date_raw change test"
  #   type: date_raw
  #   label: "Week sql created_week"
  #   sql: ${created_week} ;;
  #   html: {{ rendered_value | date: "Week %U (%b %d)" }};;
  # }

# The customized timeframes, organized in the Explore field picker under the group label Created
  # dimension: date_formatted_original_example {
  #   group_label: "LoBo original Created no type date_raw example"
  #   label: "Date sql created_date"
  #   sql: ${created_date} ;;
  #   html: {{ rendered_value | date: "%b %d, %y" }};;
  # }

  # dimension: month_formatted_original_example {
  #   group_label: "LoBo original Created no type date_raw example"
  #   label: "Month sql created_date"
  #   sql: ${created_date} ;;
  #   html: {{ rendered_value | date: "%B %Y" }};;
  # }

  # dimension: week_formatted_original_example {
  #   group_label: "LoBo original Created no type date_raw example"
  #   label: "Week sql created_date"
  #   sql: ${created_date} ;;
  #   html: {{ rendered_value | date: "Week %U (%b %d)" }};;
  # }

  dimension_group: delivered {
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
    sql: ${TABLE}.delivered_at ;;
  }

  dimension: inventory_item_id {
    hidden: yes
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension_group: shipped {
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
    sql: ${TABLE}.shipped_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    hidden: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: verticaltab {

    type: "string"

    sql: "VerticalTab\x0bVerticalTab" ;;

  }

  dimension: verticaltab2 {

    type: "string"

    sql: "VerticalTab\vVerticalTab" ;;

  }

  measure: count_of_items {
    alias: [count]
    type: count
    drill_fields: [detail*]
  }

  measure: count_of_orders {
    type: count_distinct
    sql: ${order_id} ;;
    drill_fields: [detail*]
  }

  measure: total_sales {
    type: sum
    sql: ${sale_price} ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      id,
      status,
      total_sales
    ]
  }
}
