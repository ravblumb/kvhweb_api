class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :update, :destroy]

  # GET /countries
  def index
    @countries = Country.all

    render json: @countries
  end

  # GET /countries/1
  def show
    render json: @country
  end

  # POST /countries
  def create
    @country = Country.new(country_params)

    if @country.save
      render json: @country, status: :created, location: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /countries/1
  def update
    if @country.update(country_params)
      render json: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /countries/1
  def destroy
    @country.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def country_params
      params.require(:country).permit(:country_id, :name, :fipf104, :iso2, :iso3, :ison, :internet, :capital, :map_reference, :nationality_singular, :nationality_plural, :currency, :currency_code, :population)
    end
end
