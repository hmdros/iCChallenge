require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  def setup
    @contact = contacts(:valid)
  end

  test 'Valid Contact' do
    assert @contact.valid?
  end

  # Should not create contact without name
  test 'Invalid without name' do
    @contact.name = nil
    refute @contact.valid?, 'Contact is valid without a name'
    assert_not_nil @contact.errors[:name], 'No validation error for name present'
  end

  # Should not create contact without email
  test 'Invalid without email' do
    @contact.email = nil
    refute @contact.valid?
    assert_not_nil @contact.errors[:email]
  end

  # Should not create contact without fitting "email@example.com"
  test 'Invalid without fitting email validation' do
    @contact.email = 'email'
    refute @contact.valid?
    assert_not_nil @contact.errors[:email]
  end
end
