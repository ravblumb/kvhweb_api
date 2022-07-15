class AdditionalInspectorAssignmentsController < ApplicationController
  before_action :set_additional_inspector_assignment, only: [:show, :update, :destroy]

  # GET /additional_inspector_assignments
  def index
    @additional_inspector_assignments = AdditionalInspectorAssignment.all

    render json: @additional_inspector_assignments
  end

  # GET /additional_inspector_assignments/1
  def show
    render json: @additional_inspector_assignment
  end

  # POST /additional_inspector_assignments
  def create
    @additional_inspector_assignment = AdditionalInspectorAssignment.new(additional_inspector_assignment_params)

    if @additional_inspector_assignment.save
      render json: @additional_inspector_assignment, status: :created, location: @additional_inspector_assignment
    else
      render json: @additional_inspector_assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /additional_inspector_assignments/1
  def update
    if @additional_inspector_assignment.update(additional_inspector_assignment_params)
      render json: @additional_inspector_assignment
    else
      render json: @additional_inspector_assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /additional_inspector_assignments/1
  def destroy
    @additional_inspector_assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_inspector_assignment
      @additional_inspector_assignment = AdditionalInspectorAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def additional_inspector_assignment_params
      params.require(:additional_inspector_assignment).permit(:organization_id, :inspector_id, :created_by_id, :updated_by_id, :deleted_at,  :created_at,  :updated_at)
    end
end
