class VideoGame
  attr_accessor :title, :release_date, :star_rating, :game_type, :price
  
  @@all = []

  def initialize(title, star_rating, game_type, price, release_date = Time.now)
    @title = title
    @star_rating = star_rating
    @game_type = game_type
    @price = price
    @release_date = release_date
    @@all << self
  end

  def self.all
    @@all
  end
end
