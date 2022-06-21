view: order_id_list {
  derived_table: {
    sql: SELECT '615' as order_id_list UNION ALL SELECT '1001, 1019' as order_id_list;; #
  }

  dimension: order_id_list {
    type: string
    sql: ${TABLE}.order_id_list ;;
  }

  dimension: adjustment_id_list_liquid_html {
    type: string
    sql: ${order_id_list} ;;
    html: {% assign words = value | split: ', ' %} <ul> {% for word in words %} <li>{{ word }}</li> {% endfor %};;
  }

  dimension: adjustment_id_list_liquid_html_link {
    type: string
    sql: ${order_id_list} ;;
    html: {% assign words = value | split: ', ' %} <ul> {% for word in words %} <li>{{ word }}</li> {% endfor %};;
    link: {
      label: "{% assign words = value | split: ', ' %}{% if words.size >= 1 %}Order Info for {{ words[0] }}{% endif %}"
      url: "{% assign words = value | split: ', ' %}{% if words.size >= 1  %}https://gcplmaster.dev.looker.com/explore/ldeploy_the_look/order_items?fields=order_items.id&f[order_items.id]={{ words[0] }}&limit=500{% endif %}"
    }
    link: {
      label: "{% assign words = value | split: ', ' %}{% if words.size >= 2  %}Order Info for {{ words[1] }}{% endif %}"
      url: "{% assign words = value | split: ', ' %}{% if words.size >= 2  %}https://gcplmaster.dev.looker.com/explore/ldeploy_the_look/order_items?fields=order_items.id&f[order_items.id]={{ words[1] }}&limit=500{% endif %}"
    }
  }

}
