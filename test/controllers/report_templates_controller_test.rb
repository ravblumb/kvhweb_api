require "test_helper"

class ReportTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_template = report_templates(:one)
  end

  test "should get index" do
    get report_templates_url, as: :json
    assert_response :success
  end

  test "should create report_template" do
    assert_difference('ReportTemplate.count') do
      post report_templates_url, params: { report_template: { column_list: @report_template.column_list, columns_per_page: @report_template.columns_per_page, created_by_id: @report_template.created_by_id, filter: @report_template.filter, font_size: @report_template.font_size, group_headers_on_separate_lines: @report_template.group_headers_on_separate_lines, group_list: @report_template.group_list, include_in_menu: @report_template.include_in_menu, is_public: @report_template.is_public, name: @report_template.name, new_page_for_group: @report_template.new_page_for_group, paper_orientation: @report_template.paper_orientation, remove_space: @report_template.remove_space, repeat_all_group_headers: @report_template.repeat_all_group_headers, repeat_table_header: @report_template.repeat_table_header, report: @report_template.report, report_column_list: @report_template.report_column_list, show_filter: @report_template.show_filter, small_header: @report_template.small_header, sort_list: @report_template.sort_list, updated_by_id: @report_template.updated_by_id, use_table: @report_template.use_table, user_id: @report_template.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show report_template" do
    get report_template_url(@report_template), as: :json
    assert_response :success
  end

  test "should update report_template" do
    patch report_template_url(@report_template), params: { report_template: { column_list: @report_template.column_list, columns_per_page: @report_template.columns_per_page, created_by_id: @report_template.created_by_id, filter: @report_template.filter, font_size: @report_template.font_size, group_headers_on_separate_lines: @report_template.group_headers_on_separate_lines, group_list: @report_template.group_list, include_in_menu: @report_template.include_in_menu, is_public: @report_template.is_public, name: @report_template.name, new_page_for_group: @report_template.new_page_for_group, paper_orientation: @report_template.paper_orientation, remove_space: @report_template.remove_space, repeat_all_group_headers: @report_template.repeat_all_group_headers, repeat_table_header: @report_template.repeat_table_header, report: @report_template.report, report_column_list: @report_template.report_column_list, show_filter: @report_template.show_filter, small_header: @report_template.small_header, sort_list: @report_template.sort_list, updated_by_id: @report_template.updated_by_id, use_table: @report_template.use_table, user_id: @report_template.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy report_template" do
    assert_difference('ReportTemplate.count', -1) do
      delete report_template_url(@report_template), as: :json
    end

    assert_response 204
  end
end
