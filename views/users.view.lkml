view: users {
  sql_table_name: `looker-private-demo.thelook.users`;;

  #sql_table_name:
  #{% if ${test} < 10 %}
   #  `looker-private-demo.thelook.users`
  #{% else %}
   #`looker-private-demo.thelook.users`
  #{% endif %} ;;

#iml
  filter: as_of_date {
    label: "as_of_date (try: today. or: 2018/01/01)"
    type: date
    default_value:"yesterday"
    sql: ${created_date};;

    hidden: no
  }

  parameter: tablename {
    type: unquoted
    allowed_value: {
      label: "derived table"
      value: "derived table name"
    }
    allowed_value: {
      label: "another table"
      value: "schema.table_name"
    }
  }

  measure: test {
    type:  number
    sql:  11 ;;
  }

  #iml
  measure: top_axis {
    type: number
    sql: 1;;
  }

#iml
  #sql_table_name: {% if table_chooser._parameter_value = '1' %}table1{% else %}table2{%endif%}

#sql_table_name:
 #   {% assign dateStart = start_date._parameter_value | date: '%s' %}
  #  {% assign dateEnd = end_date._parameter_value | date: '%s' %}
   # {% assign daysDiff = dateStart | minus: dateEnd  | divided_by: 3600 | divided_by: 24 %}
    #{% if daysDiff > 2 %}
    #`looker-private-demo.thelook.users`
    #{% else %}
    #from XXXXX_2 as table2
    #{% endif %} ;;



  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }


#iml
  measure: cnt_Upstart_rate_check {
    description: "number of upstart rate check"
    type: count_distinct
    sql:
    CASE WHEN ${created_date} > CAST('2022-02-22' AS DATE)
    THEN ${id}
    END ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
    drill_fields: [last_name]
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      order_items.count,
      orders.count,
      events.count
    ]
  }
}
