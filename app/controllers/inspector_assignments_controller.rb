class InspectorAssignmentsController < ApplicationController
  before_action :set_inspector_assignment, only: [:show, :update, :destroy]

  # GET /inspector_assignments
  def index
    @inspector_assignments = InspectorAssignment.all

    render json: @inspector_assignments
  end

  # GET /inspector_assignments/1
  def show
    render json: @inspector_assignment
  end

  # POST /inspector_assignments
  def create
    @inspector_assignment = InspectorAssignment.new(inspector_assignment_params)

    if @inspector_assignment.save
      render json: @inspector_assignment, status: :created, location: @inspector_assignment
    else
      render json: @inspector_assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspector_assignments/1
  def update
    if @inspector_assignment.update(inspector_assignment_params)
      render json: @inspector_assignment
    else
      render json: @inspector_assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspector_assignments/1
  def destroy
    @inspector_assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspector_assignment
      @inspector_assignment = InspectorAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspector_assignment_params
      params.require(:inspector_assignment).permit(:inspector_id, :organization_id, :role, :replaced_at)
    end
end
