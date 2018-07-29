require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")


class RoomsTest < MiniTest::Test
  def setup
    @stander_room1 = Rooms.new("stander_room1", 120, 5)
    @luxury_room1 = Rooms.new("luxury_room1", 1000, 10)

    @Julie = Guests.new("Julie", 80, "Hello")
    @Tom = Guests.new("Tom", 60, "Billy_Jean")
    @Wendy = Guests.new("Wendy", 100, "Photograph")
    @Ray = Guests.new("Ray", 90, "No milk today")
    # @Sally = Guest.new("Sally", 100)


    @stander_room1.add_guest(@Julie)
    @stander_room1.add_guest(@Tom)
    @stander_room1.add_guest(@Wendy)
    @stander_room1.add_guest(@Ray)


    @Billy_Jean = Songs.new("Billy_Jean")
    @stander_room1.add_song(@Billy_Jean)


  end

  def test_get_room_name()
    assert_equal("stander_room1", @stander_room1.room_name())
  end

  def test_get_room_size()
    assert_equal(5, @stander_room1.room_size())
  end

  def test_get_room_price()
    assert_equal(1000, @luxury_room1.room_price())
  end

  def test_add_guest_to_guest_list()
    new_guest = Guests.new("Ken", 60, "Blackbird")
    @stander_room1.add_guest(new_guest)
    assert_equal(5, @stander_room1.guest_count())
  end

  def test_check_in()
    new_guest = Guests.new("Ken", 60, "Blackbird")
    @stander_room1.add_guest(new_guest)
    result = @stander_room1.check_in(@Julie)
    assert_equal(true, result)
  end

  def test_check_out()
    @Ken = Guests.new("Ken", 60, "Blackbird")
    @stander_room1.add_guest(@Ken)
    result = @stander_room1.check_out(@Ken)
    assert_equal(4, @stander_room1.guest_count())
  end

  def test_add_song_to_song_list()
    @Hello = Songs.new("Hello")
    @stander_room1.add_song(@Hello)
    assert_equal(2, @stander_room1.song_count())
  end

  def test_reject_guest()
    @Ken = Guests.new("Ken", 60, "Blackbird")
    @stander_room1.add_guest(@Ken)
    result = @stander_room1.reject_guest()
    expected = "Sorry, we are fully booked!"
    assert_equal(expected, result)
  end

  def test_match_favourite_song()
    result = @stander_room1.match_favourite_song()
    expected = "whoop whoop!"
    assert_equal(expected, result)
  end

  def test_fee_charge()
    result = @stander_room1.fee_charge()
    expected = [50,30,70,60]
    assert_equal(expected, result)
  end



end
