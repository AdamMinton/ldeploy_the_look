connection: "ldeploy_the_look"

include: "/views/*"

explore: order_items {

  query: test1 {
    dimensions: [order_items.order_id,order_items.user_id]
  }

}
