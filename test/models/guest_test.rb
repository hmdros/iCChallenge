require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  def setup
    @guest = guests(:valid)
  end

  test 'Valid Guest' do
    assert @guest.valid?
  end

  # Should not create contact without uuid
  test 'Invalid without uuid' do
    @guest.uuid = nil
    refute @guest.valid?, 'Guest is valid without a uuid'
    assert_not_nil @guest.errors[:uuid], 'No validation error for uuid present'
  end

  # Should not create guest without url
  test 'Invalid without url' do
    @guest.url = nil
    refute @guest.valid?
    assert_not_nil @guest.errors[:url]
  end

  # Should not create guest without timestamp
  test 'Invalid without timestamp' do
    @guest.timestamp = nil
    refute @guest.valid?
    assert_not_nil @guest.errors[:url]
  end
end
