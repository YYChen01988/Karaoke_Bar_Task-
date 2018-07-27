require("minitest/autorun")
require("minitest/rg")

require_relative("../guests.rb")

class GuestsTest < MiniTest::Test
  def setup
    @Julie = Guests.new("Julie", 80, "Hello")
    @Tom = Guests.new("Tom", 60, "Billy_Jean")
  end

  def test_get_guest_name()
    assert_equal("Tom", @Tom.guest_name())
  end

  def test_check_guest_wallet()
    assert_equal(80, @Julie.wallet())
  end

  def test_favourite_song()
    assert_equal("Hello", @Julie.favourite_song())
  end










end
