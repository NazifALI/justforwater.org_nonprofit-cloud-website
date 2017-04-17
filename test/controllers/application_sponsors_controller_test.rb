require 'test_helper'

class ApplicationSponsorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_sponsor = application_sponsors(:one)
  end

  test "should get index" do
    get application_sponsors_url
    assert_response :success
  end

  test "should get new" do
    get new_application_sponsor_url
    assert_response :success
  end

  test "should create application_sponsor" do
    assert_difference('ApplicationSponsor.count') do
      post application_sponsors_url, params: { application_sponsor: { description: @application_sponsor.description, image_id: @application_sponsor.image_id, name: @application_sponsor.name } }
    end

    assert_redirected_to application_sponsor_url(ApplicationSponsor.last)
  end

  test "should show application_sponsor" do
    get application_sponsor_url(@application_sponsor)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_sponsor_url(@application_sponsor)
    assert_response :success
  end

  test "should update application_sponsor" do
    patch application_sponsor_url(@application_sponsor), params: { application_sponsor: { description: @application_sponsor.description, image_id: @application_sponsor.image_id, name: @application_sponsor.name } }
    assert_redirected_to application_sponsor_url(@application_sponsor)
  end

  test "should destroy application_sponsor" do
    assert_difference('ApplicationSponsor.count', -1) do
      delete application_sponsor_url(@application_sponsor)
    end

    assert_redirected_to application_sponsors_url
  end
end
