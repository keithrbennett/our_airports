require "application_system_test_case"

class AirportsTest < ApplicationSystemTestCase
  setup do
    @airport = airports(:one)
  end

  test "visiting the index" do
    visit airports_url
    assert_selector "h1", text: "Airports"
  end

  test "creating a Airport" do
    visit airports_url
    click_on "New Airport"

    fill_in "Continent", with: @airport.continent
    fill_in "Elevation Ft", with: @airport.elevation_ft
    fill_in "Gps Code", with: @airport.gps_code
    fill_in "Home Link", with: @airport.home_link
    fill_in "Iata Code", with: @airport.iata_code
    fill_in "Ident", with: @airport.ident
    fill_in "Iso Country", with: @airport.iso_country
    fill_in "Iso Region", with: @airport.iso_region
    fill_in "Keywords", with: @airport.keywords
    fill_in "Lat", with: @airport.lat
    fill_in "Long", with: @airport.long
    fill_in "Municipality", with: @airport.municipality
    fill_in "Name", with: @airport.name
    fill_in "Oa", with: @airport.oa_id
    fill_in "Scheduled Service", with: @airport.scheduled_service
    fill_in "Type", with: @airport.type
    fill_in "Wikipedia Link", with: @airport.wikipedia_link
    click_on "Create Airport"

    assert_text "Airport was successfully created"
    click_on "Back"
  end

  test "updating a Airport" do
    visit airports_url
    click_on "Edit", match: :first

    fill_in "Continent", with: @airport.continent
    fill_in "Elevation Ft", with: @airport.elevation_ft
    fill_in "Gps Code", with: @airport.gps_code
    fill_in "Home Link", with: @airport.home_link
    fill_in "Iata Code", with: @airport.iata_code
    fill_in "Ident", with: @airport.ident
    fill_in "Iso Country", with: @airport.iso_country
    fill_in "Iso Region", with: @airport.iso_region
    fill_in "Keywords", with: @airport.keywords
    fill_in "Lat", with: @airport.lat
    fill_in "Long", with: @airport.long
    fill_in "Municipality", with: @airport.municipality
    fill_in "Name", with: @airport.name
    fill_in "Oa", with: @airport.oa_id
    fill_in "Scheduled Service", with: @airport.scheduled_service
    fill_in "Type", with: @airport.type
    fill_in "Wikipedia Link", with: @airport.wikipedia_link
    click_on "Update Airport"

    assert_text "Airport was successfully updated"
    click_on "Back"
  end

  test "destroying a Airport" do
    visit airports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Airport was successfully destroyed"
  end
end
