require 'pry'
require 'faker'

require_relative "../lib/Purchase.rb"
require_relative "../lib/Steam_User.rb"
require_relative "../lib/Video_Game.rb"


### ---------- SEED DATA ---------- ###

#Samples
game_types = ["RPG", "FPS", "RTS", "MOBA", "MMORPG", "2D Platormer", "Fighting", "Flight Simulator", "Survival", "Rhythm", "Simulation", "Strategy", "Sports"]

game_costs = [5,10,15,20,25,30,35,40,45,50,55,60]

#create 50 Steam Users
50.times do SteamUser.new(Faker::FunnyName.two_word_name.split(" ").join(), rand(9..65), Faker::Nation.capital_city, game_types.sample(),Faker::Date.backward(900))
  puts "Sucessfully created SteamUser!"
end

#create 50 Video Games
50.times do VideoGame.new(Faker::Game.title, rand(1..5), game_types.sample(), game_costs.sample(),Faker::Date.backward(900))
  puts "Sucessfully created VideoGame!"
end

all_steam_users = SteamUser.all
all_games = VideoGame.all


#create 1000 purchases
1000.times do 
  steam_user = all_steam_users.sample()
  video_game = all_games.sample()
  Purchase.new(video_game.price, video_game, steam_user)
  puts "Sucessfully created Purchase!"
end

test_user = SteamUser.all[0]







### --- Mod 1 Code Challenge Review --- ###
binding.pry
