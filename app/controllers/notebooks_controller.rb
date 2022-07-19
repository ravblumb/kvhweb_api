class NotebooksController < ApplicationController
  before_action :set_notebook, only: [:show, :update, :destroy]

  # GET /notebooks
  def index
    @notebooks = Notebook.all

    render json: @notebooks
  end

  # GET /notebooks/1
  def show
    render json: @notebook
  end

  # POST /notebooks
  def create
    @notebook = Notebook.new(notebook_params)

    if @notebook.save
      render json: @notebook, status: :created, location: @notebook
    else
      render json: @notebook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notebooks/1
  def update
    if @notebook.update(notebook_params)
      render json: @notebook
    else
      render json: @notebook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notebooks/1
  def destroy
    @notebook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notebook
      @notebook = Notebook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notebook_params
      params.require(:notebook).permit(:company_id, :created_by_id, :updated_by_id)
    end
end
