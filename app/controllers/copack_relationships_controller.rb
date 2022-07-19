class CopackRelationshipsController < ApplicationController
  before_action :set_copack_relationship, only: [:show, :update, :destroy]

  # GET /copack_relationships
  def index
    @copack_relationships = CopackRelationship.all

    render json: @copack_relationships
  end

  # GET /copack_relationships/1
  def show
    render json: @copack_relationship
  end

  # POST /copack_relationships
  def create
    @copack_relationship = CopackRelationship.new(copack_relationship_params)

    if @copack_relationship.save
      render json: @copack_relationship, status: :created, location: @copack_relationship
    else
      render json: @copack_relationship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /copack_relationships/1
  def update
    if @copack_relationship.update(copack_relationship_params)
      render json: @copack_relationship
    else
      render json: @copack_relationship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /copack_relationships/1
  def destroy
    @copack_relationship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copack_relationship
      @copack_relationship = CopackRelationship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def copack_relationship_params
      params.require(:copack_relationship).permit(:copack_manufacturer_id, :copack_client_id, :manufacturer_signed_at, :manufacturer_signature_name, :manufacturer_signature_json, :client_signed_at, :client_signature_name, :client_signature_json, :rc_approved_by_id, :rc_approved_at, :comments, :created_by_id, :updated_by_id, :deleted_at)
    end
end
