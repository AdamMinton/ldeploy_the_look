view: inventory_items {
  sql_table_name: `looker-private-demo.thelook.inventory_items`;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_brand {
    hidden: yes
    type: string
    sql: ${TABLE}.product_brand ;;
  }

  dimension: product_category {
    hidden: yes
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: product_department {
    hidden: yes
    type: string
    sql: ${TABLE}.product_department ;;
  }

  dimension: product_distribution_center_id {
    hidden: yes
    type: number
    sql: ${TABLE}.product_distribution_center_id ;;
  }

  dimension: product_id {
    hidden: yes
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    hidden: yes
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_retail_price {
    hidden: yes
    type: number
    sql: ${TABLE}.product_retail_price ;;
  }

  dimension: product_sku {
    hidden: yes
    type: string
    sql: ${TABLE}.product_sku ;;
  }

  dimension_group: sold {
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
    sql: ${TABLE}.sold_at ;;
  }

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
  }

}
