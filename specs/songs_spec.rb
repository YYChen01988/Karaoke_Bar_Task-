require("minitest/autorun")
require("minitest/rg")

require_relative("../songs.rb")

class SongsTest < MiniTest::Test
  def setup
    @Billy_Jean = Songs.new("Billy_Jean")
  end

  def test_get_song_name()
    assert_equal("Billy_Jean", @Billy_Jean.song_name())
  end


end
