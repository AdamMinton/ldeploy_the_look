- dashboard: value_format_test
  title: value format test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: So5s305ikeKZCN1uy1yT6I
  elements:
  - title: named_value_format used on LookML Measure
    name: named_value_format used on LookML Measure
    model: ldeploy_the_look
    explore: order_items
    type: single_value
    fields: [order_items.created_year, order_items.division_test_2, order_items.division_test_1]
    fill_fields: [order_items.created_year]
    filters: {}
    sorts: [order_items.created_year desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    hidden_fields: [order_items.created_year]
    y_axes: []
    listen:
      Created Year: order_items.created_year
    row: 8
    col: 0
    width: 18
    height: 3
  - title: named_value_format used on Table Calc for comparison value
    name: named_value_format used on Table Calc for comparison value
    model: ldeploy_the_look
    explore: order_items
    type: single_value
    fields: [order_items.created_year, order_items.division_test_1]
    fill_fields: [order_items.created_year]
    filters:
      order_items.created_year: 2 years
    sorts: [order_items.created_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(round(${order_items.division_test_1},4)\
          \ - \nround(offset(${order_items.division_test_1},1),4)) *100", label: Table
          Calc, value_format: !!null '', value_format_name: percentage_points_test_1,
        _kind_hint: measure, table_calculation: table_calc, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    hidden_fields: [order_items.created_year]
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 18
    height: 4
  - title: standard value format option (percent 2) used on table calc for comparison
    name: standard value format option (percent 2) used on table calc for comparison
    model: ldeploy_the_look
    explore: order_items
    type: single_value
    fields: [order_items.created_year, order_items.division_test_1]
    fill_fields: [order_items.created_year]
    filters:
      order_items.created_year: 2 years
    sorts: [order_items.created_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(round(${order_items.division_test_1},4)\
          \ - \nround(offset(${order_items.division_test_1},1),4)) *100", label: Table
          Calc, value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        table_calculation: table_calc, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    hidden_fields: [order_items.created_year]
    y_axes: []
    listen: {}
    row: 11
    col: 0
    width: 18
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      If we Edit this tile or Explore From Here, we'll see that the "Comparison" value for the single value vis retains the custom `named_value_format` that we specify (e.g. appears as `0.09 pp`).  However, this formatting is not retained on the dashboard itself.

      I believe it's specific to adding this formatting to a table calculation, as applying it to a measure seems to keep its formatting on the dashboard as well
    row: 0
    col: 18
    width: 6
    height: 4
  - title: named_value_format used on Table Calc for comparison value (Copy)
    name: named_value_format used on Table Calc for comparison value (Copy)
    model: ldeploy_the_look
    explore: order_items
    type: single_value
    fields: [order_items.created_year, order_items.division_test_1]
    fill_fields: [order_items.created_year]
    filters:
      order_items.created_year: 2 years
    sorts: [order_items.created_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(round(${order_items.division_test_1},4)\
          \ - \nround(offset(${order_items.division_test_1},1),4)) *100", label: Table
          Calc, value_format: "#,##0.00 pp", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: table_calc, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    hidden_fields: [order_items.created_year]
    y_axes: []
    row: 4
    col: 0
    width: 18
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: If instead of referencing the `named_value_format` as the format choice
      for our table calc, and instead choose to input a `Custom` value format equivalent
      to what's in the named_value_format (e.g. `#,##0.00 pp`), we get expected results
      on the dashboard.
    row: 4
    col: 18
    width: 6
    height: 4
  filters:
  - name: Created Year
    title: Created Year
    type: field_filter
    default_value: 2 years
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ldeploy_the_look
    explore: order_items
    listens_to_filters: []
    field: order_items.created_year
