require "application_system_test_case"

class HomePagesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"

    assert_selector "h1", text: "Home Page"
  end
end
