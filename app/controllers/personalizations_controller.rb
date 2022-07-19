class PersonalizationsController < ApplicationController
  before_action :set_personalization, only: [:show, :update, :destroy]

  # GET /personalizations
  def index
    @personalizations = Personalization.all

    render json: @personalizations
  end

  # GET /personalizations/1
  def show
    render json: @personalization
  end

  # POST /personalizations
  def create
    @personalization = Personalization.new(personalization_params)

    if @personalization.save
      render json: @personalization, status: :created, location: @personalization
    else
      render json: @personalization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personalizations/1
  def update
    if @personalization.update(personalization_params)
      render json: @personalization
    else
      render json: @personalization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personalizations/1
  def destroy
    @personalization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personalization
      @personalization = Personalization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personalization_params
      params.require(:personalization).permit(:user_id, :key, :value, :created_by_id, :updated_by_id)
    end
end
