class ReportTemplatesController < ApplicationController
  before_action :set_report_template, only: [:show, :update, :destroy]

  # GET /report_templates
  def index
    @report_templates = ReportTemplate.all

    render json: @report_templates
  end

  # GET /report_templates/1
  def show
    render json: @report_template
  end

  # POST /report_templates
  def create
    @report_template = ReportTemplate.new(report_template_params)

    if @report_template.save
      render json: @report_template, status: :created, location: @report_template
    else
      render json: @report_template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /report_templates/1
  def update
    if @report_template.update(report_template_params)
      render json: @report_template
    else
      render json: @report_template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /report_templates/1
  def destroy
    @report_template.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_template
      @report_template = ReportTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_template_params
      params.require(:report_template).permit(:user_id, :report, :name, :is_public, :columns_per_page, :new_page_for_group, :font_size, :paper_orientation, :group_headers_on_separate_lines, :repeat_all_group_headers, :repeat_table_header, :column_list, :report_column_list, :group_list, :sort_list, :include_in_menu, :use_table, :created_by_id, :updated_by_id, :small_header, :remove_space, :filter, :show_filter)
    end
end
