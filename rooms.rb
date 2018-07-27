class Rooms

attr_reader :room_name, :room_price, :room_size

def initialize(room_name,room_price, room_size)
  @room_name = room_name
  @room_price = room_price
  #price per person per hour
  @room_size = room_size
  #maximum number of people to use this room
  @guest_list = []
  @song_list = []
end

  def add_guest(guest)
    @guest_list << guest
  end

  def guest_count()
    @guest_list.count()
  end

  def check_in(guest_info)
    @guest_list.include?(guest_info)
  end

  def check_out(guest_info)
    @guest_list.delete(guest_info)
  end

  def add_song(song)
    @song_list << song
  end

  def song_count()
    @song_list.count()
  end


  def reject_guest()
    if @guest_list.count() >= @room_size
      return "Sorry, we are fully booked!"
    end
  end



end
