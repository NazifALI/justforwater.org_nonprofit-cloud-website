require 'test_helper'

class SponsorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sponsors_new_url
    assert_response :success
  end

  test "should get create" do
    get sponsors_create_url
    assert_response :success
  end

end
