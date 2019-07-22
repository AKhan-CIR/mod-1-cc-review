require 'pry'

class SteamUser
  attr_accessor :account_name, :join_date, :age, :location, :favorite_game_type

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
    game_prices = [5,10,15,20,25,30,35,40,45,50,55,60]
    game = VideoGame.all.select {|game| game.name == video_game}
    binding.pry
    if game != []
      Purchase.new(game[0].price, video_game, self)
    else
      Purchase.new(game_prices.sample(), video_game, self)
    end
  end

  def purchases
    Purchase.all.select {|x| x.steam_user == self}
  end

  def games
    game_collection = []
    purchases().each {|purchase| game_collection << purchase.video_game.title}
    game_collection
  end

  def self.user_with_most_games
    sorted = @@all.sort {|a,b| a.games.count <=> b.games.count}
    user = sorted.last.account_name
    number_of_games = sorted.last.games.count
    puts "The Steam User with the most games is #{user} with #{number_of_games} games!"
  end
end

