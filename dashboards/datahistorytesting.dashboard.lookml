- dashboard: data_history
  title: Data History
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: fSLStlPZQ1cuFIl2P9YbvD
  elements:
  - title: Data History
    name: Data History
    model: j_looker
    explore: user
    type: looker_line
    fields: [user.count, user.created_month]
    fill_fields: [user.created_month]
    sorts: [user.created_month desc]
    limit: 500
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
    listen:
      Is Disabled (Yes / No): user.is_disabled
    row: 0
    col: 0
    width: 24
    height: 12
  - title: New Tile
    name: New Tile
    model: j_looker
    explore: user
    type: looker_bar
    fields: [user.count, user.timezone, user.created_month]
    sorts: [user.count desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Is Disabled (Yes / No): user.is_disabled
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (2)
    model: j_looker
    explore: user
    type: looker_column
    fields: [scheduled_job.count, scheduled_job.timezone]
    sorts: [scheduled_job.count desc 0]
    limit: 500
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
    listen:
      Is Disabled (Yes / No): user.is_disabled
    row:
    col:
    width:
    height:
  filters:
  - name: Is Disabled (Yes / No)
    title: Is Disabled (Yes / No)
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: j_looker
    explore: user
    listens_to_filters: []
    field: user.is_disabled
