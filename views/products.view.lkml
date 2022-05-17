view: products {
  sql_table_name: `looker-private-demo.thelook.products`;;

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

#iml
  dimension: brand_filter {
    type: string
    sql:
        CASE
          WHEN ${TABLE}.brand  = 'Columbia'
            OR ${TABLE}.brand  = '106Shades'
            OR ${TABLE}.brand  = 'AxParis'THEN  ${TABLE}.brand
          ELSE null
        END ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distribution_center_id {
    hidden: yes
    type: number
    sql: CAST(${TABLE}.distribution_center_id as INT64);;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
    required_fields: [id]
  }

  measure: count_of_products {
    alias: [count]
    type: count
  }
}
