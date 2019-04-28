require "application_system_test_case"

class GuestsTest < ApplicationSystemTestCase
  test "visiting the guests_url" do
    visit guests_url

    assert_selector "tr"
  end

  test "Checking guest details" do
    visit guests_url
    click_on "Show", match: :first

    assert_text "Contacts"
    assert_text "UUID:"
  end
end
