class SteamUser
  attr_reader :account_name, :join_date
  attr_accessor :age, :location, :favorite_game_type
  @@all = []

  def initialize(account_name, age, location, favorite_game_type, join_date = Time.now)
    @account_name = account_name
    @age = age
    @location = location
    @favorite_game_type = favorite_game_type
    @join_date = join_date
    @@all << self
  end

  def self.all
    @@all
  end

  def new_purchase(video_game)
    Purchase.new(self, video_game)
  end

  def purchases
    Purchase.all.select {|purchase| purchase.steam_user == self}
  end

  def games
    
    purchases().map do |purchase|
      purchase.game.title  
    end
  end
end

