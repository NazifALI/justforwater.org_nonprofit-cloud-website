require 'test_helper'

class ApplicationContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_contact = application_contacts(:one)
  end

  test "should get index" do
    get application_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_application_contact_url
    assert_response :success
  end

  test "should create application_contact" do
    assert_difference('ApplicationContact.count') do
      post application_contacts_url, params: { application_contact: { description: @application_contact.description, email: @application_contact.email, name: @application_contact.name, phone: @application_contact.phone } }
    end

    assert_redirected_to application_contact_url(ApplicationContact.last)
  end

  test "should show application_contact" do
    get application_contact_url(@application_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_contact_url(@application_contact)
    assert_response :success
  end

  test "should update application_contact" do
    patch application_contact_url(@application_contact), params: { application_contact: { description: @application_contact.description, email: @application_contact.email, name: @application_contact.name, phone: @application_contact.phone } }
    assert_redirected_to application_contact_url(@application_contact)
  end

  test "should destroy application_contact" do
    assert_difference('ApplicationContact.count', -1) do
      delete application_contact_url(@application_contact)
    end

    assert_redirected_to application_contacts_url
  end
end
