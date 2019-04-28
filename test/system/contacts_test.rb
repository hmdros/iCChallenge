require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/contacts'

    assert_selector "h1", text: "Contacts List"
    assert_selector ".contact", count: Contact.count
  end

  test "visiting the form page" do
    visit '/contacts/new'

    assert_selector '.form-field', count: 2
  end

  test "creating a contact" do
    visit '/contacts/new'

    fill_in "Name", with: "User"
    fill_in "Email", with: "user@email.com"
    click_on "Create Contact"

    # Should be redirected to the Contact page
    assert_text "user@email.com"
  end

  test "destroying a contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Delete", match: :first
    end
  end
end
