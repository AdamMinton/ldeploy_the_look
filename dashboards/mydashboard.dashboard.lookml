- dashboard: mydashboard
  title:
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: My tile
    name: My tile
    model: ldeploy_the_look
    explore: order_items
    type: looker_grid
    fields: [order_items.order_id, order_items.id, order_items.sale_price, order_items.status]
    sorts: [order_items.order_id]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row:
    col:
    width:
    height:
  embed_style:
     show_title: false
