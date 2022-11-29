- dashboard: top_50_brands
  title: Top 50 Brands updated 11 28
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5i3Aa0VK6spqsCpZTf1mI0
  elements:
  - title: Top 50 Brands updated via Github part 2
    name: Top 50 Brands updated via Github part 2
    model: ldeploy_the_look
    explore: order_items
    type: looker_column
    fields: [order_items.total_sales, products.brand]
    sorts: [order_items.total_sales desc 0]
    limit: 50
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Total Sales
    name: Total Sales
    model: ldeploy_the_look
    explore: order_items
    type: looker_line
    fields: [order_items.created_year, order_items.total_sales]
    fill_fields: [order_items.created_year]
    sorts: [order_items.created_year desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 24
    height: 6
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"11 15 2022 - 11:44"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 18
    col: 0
    width: 8
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"11 15 2022 - 11 51"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 18
    col: 8
    width: 8
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"This dashboard is going to replace
      another LookML"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 18
    col: 16
    width: 8
    height: 6
