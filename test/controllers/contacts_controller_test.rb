require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contacts_path
    assert_response :success
  end

  test "should get show" do
    get '/contacts/'
    assert_response :success
  end

  test "should get new" do
    get new_contact_path
    assert_response :success
  end
end
