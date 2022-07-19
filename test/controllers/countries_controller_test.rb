require "test_helper"

class CountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country = countries(:one)
  end

  test "should get index" do
    get countries_url, as: :json
    assert_response :success
  end

  test "should create country" do
    assert_difference('Country.count') do
      post countries_url, params: { country: { capital: @country.capital, country_id: @country.country_id, currency: @country.currency, currency_code: @country.currency_code, fipf104: @country.fipf104, internet: @country.internet, iso2: @country.iso2, iso3: @country.iso3, ison: @country.ison, map_reference: @country.map_reference, name: @country.name, nationality_plural: @country.nationality_plural, nationality_singular: @country.nationality_singular, population: @country.population } }, as: :json
    end

    assert_response 201
  end

  test "should show country" do
    get country_url(@country), as: :json
    assert_response :success
  end

  test "should update country" do
    patch country_url(@country), params: { country: { capital: @country.capital, country_id: @country.country_id, currency: @country.currency, currency_code: @country.currency_code, fipf104: @country.fipf104, internet: @country.internet, iso2: @country.iso2, iso3: @country.iso3, ison: @country.ison, map_reference: @country.map_reference, name: @country.name, nationality_plural: @country.nationality_plural, nationality_singular: @country.nationality_singular, population: @country.population } }, as: :json
    assert_response 200
  end

  test "should destroy country" do
    assert_difference('Country.count', -1) do
      delete country_url(@country), as: :json
    end

    assert_response 204
  end
end
