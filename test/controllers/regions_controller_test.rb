require 'test_helper'

class RegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get regions_url
    assert_response :success
  end

  test "should get new" do
    get new_region_url
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post regions_url, params: { region: { code: @region.code, continent: @region.continent, iso_country: @region.iso_country, keywords: @region.keywords, local_code: @region.local_code, name: @region.name, oa_id: @region.oa_id, wikipedia_link: @region.wikipedia_link } }
    end

    assert_redirected_to region_url(Region.last)
  end

  test "should show region" do
    get region_url(@region)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_url(@region)
    assert_response :success
  end

  test "should update region" do
    patch region_url(@region), params: { region: { code: @region.code, continent: @region.continent, iso_country: @region.iso_country, keywords: @region.keywords, local_code: @region.local_code, name: @region.name, oa_id: @region.oa_id, wikipedia_link: @region.wikipedia_link } }
    assert_redirected_to region_url(@region)
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete region_url(@region)
    end

    assert_redirected_to regions_url
  end
end
