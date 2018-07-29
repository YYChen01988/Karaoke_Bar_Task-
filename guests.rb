class Guests

attr_reader :guest_name, :wallet, :favourite_song

def initialize(guest_name, wallet, favourite_song)
  @guest_name = guest_name
  @wallet = wallet
  @favourite_song = favourite_song
end

def add_to_wallet(amount)
  @wallet += amount
end









end
