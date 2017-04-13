require 'test_helper'

class SponsorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    # get sponsors_new
    # assert_response :success
    @sponsor = Sponsor.new
    assert @sponsor.name.nil?
  end

  test "should get create" do
    # get sponsors_create
    # assert_response :success
    @sponsor = Sponsor.create()
    assert @sponsor.nil? == false
  end

end
