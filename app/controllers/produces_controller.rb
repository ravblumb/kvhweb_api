class ProducesController < ApplicationController
  before_action :set_produce, only: [:show, :update, :destroy]

  # GET /produces
  def index
    @produces = Produce.all

    render json: @produces
  end

  # GET /produces/1
  def show
    render json: @produce
  end

  # POST /produces
  def create
    @produce = Produce.new(produce_params)

    if @produce.save
      render json: @produce, status: :created, location: @produce
    else
      render json: @produce.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /produces/1
  def update
    if @produce.update(produce_params)
      render json: @produce
    else
      render json: @produce.errors, status: :unprocessable_entity
    end
  end

  # DELETE /produces/1
  def destroy
    @produce.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produce
      @produce = Produce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produce_params
      params.require(:produce).permit(:name, :group, :bugs_usually_found, :procedure, :deleted_at, :picture_filename, :picture_content_type, :picture_binary_data)
    end
end
