require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../till.rb")



class TillTest < MiniTest::Test
  def setup
    @stander_room1 = Rooms.new("stander_room1", 120, 5)
    @luxury_room1 = Rooms.new("luxury_room1", 1000, 10)

    @Julie = Guests.new("Julie", 80, "Hello")
    @Tom = Guests.new("Tom", 60, "Billy_Jean")
    @Wendy = Guests.new("Wendy", 30, "Photograph")
    @Ray = Guests.new("Ray", 90, "No milk today")
    # @Sally = Guest.new("Sally", 100)


    @stander_room1.add_guest(@Julie)
    @stander_room1.add_guest(@Tom)
    @stander_room1.add_guest(@Wendy)
    @stander_room1.add_guest(@Ray)


    @Billy_Jean = Songs.new("Billy_Jean")
    @stander_room1.add_song(@Billy_Jean)


  end


end
