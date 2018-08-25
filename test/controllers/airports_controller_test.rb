require 'test_helper'

class AirportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airport = airports(:one)
  end

  test "should get index" do
    get airports_url
    assert_response :success
  end

  test "should get new" do
    get new_airport_url
    assert_response :success
  end

  test "should create airport" do
    assert_difference('Airport.count') do
      post airports_url, params: { airport: { continent: @airport.continent, elevation_ft: @airport.elevation_ft, gps_code: @airport.gps_code, home_link: @airport.home_link, iata_code: @airport.iata_code, ident: @airport.ident, iso_country: @airport.iso_country, iso_region: @airport.iso_region, keywords: @airport.keywords, lat: @airport.lat, long: @airport.long, municipality: @airport.municipality, name: @airport.name, oa_id: @airport.oa_id, scheduled_service: @airport.scheduled_service, type: @airport.airport_type, wikipedia_link: @airport.wikipedia_link } }
    end

    assert_redirected_to airport_url(Airport.last)
  end

  test "should show airport" do
    get airport_url(@airport)
    assert_response :success
  end

  test "should get edit" do
    get edit_airport_url(@airport)
    assert_response :success
  end

  test "should update airport" do
    patch airport_url(@airport), params: { airport: { continent: @airport.continent, elevation_ft: @airport.elevation_ft, gps_code: @airport.gps_code, home_link: @airport.home_link, iata_code: @airport.iata_code, ident: @airport.ident, iso_country: @airport.iso_country, iso_region: @airport.iso_region, keywords: @airport.keywords, lat: @airport.lat, long: @airport.long, municipality: @airport.municipality, name: @airport.name, oa_id: @airport.oa_id, scheduled_service: @airport.scheduled_service, type: @airport.airport_type, wikipedia_link: @airport.wikipedia_link } }
    assert_redirected_to airport_url(@airport)
  end

  test "should destroy airport" do
    assert_difference('Airport.count', -1) do
      delete airport_url(@airport)
    end

    assert_redirected_to airports_url
  end
end
