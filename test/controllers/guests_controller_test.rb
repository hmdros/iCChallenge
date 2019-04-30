require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guests_path
    assert_response :success
  end

  test "should get show" do
    get '/guests/'
    assert_response :success
  end
end
