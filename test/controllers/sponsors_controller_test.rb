require 'test_helper'

class SponsorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sponsors_join_url
    assert_response :success
  end

  test "should get create" do
    post sponsors_join_url
    assert_response :success
  end

end
