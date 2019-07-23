require 'pry'
require 'faker'

require_relative "../lib/Purchase.rb"
require_relative "../lib/Steam_User.rb"
require_relative "../lib/Video_Game.rb"


user1 = SteamUser.new("accountname1", 18, "Seattle", "Sim")
user2 = SteamUser.new("accountname2", 18, "Sacramento", "Strategy")
user1 = SteamUser.new("accountname3", 18, "Seattle", "RPG")
user2 = SteamUser.new("accountname4", 18, "Shoreline", "RPG")
user3 = SteamUser.new("accountname5", 18, "Bakersfield", "Strategy")
user4 = SteamUser.new("accountname6", 18, "Seattle", "RPG")
user5 = SteamUser.new("accountname7", 18, "Bakersfield", "RPG")
user6 = SteamUser.new("accountname8", 18, "Seattle", "Sim")
user7 = SteamUser.new("accountname9", 18, "Seattle", "Strategy")
user8 = SteamUser.new("accountname10", 18, "Shoreline", "Sim")
user9 = SteamUser.new("accountname11", 18, "Seattle", "Strategy")

game1 = VideoGame.new("Mario Bros")
game2 = VideoGame.new("Mario Bros 2")
game3 = VideoGame.new("Mario Bros 3")
game4 = VideoGame.new("Mario Bros 4")
game5 = VideoGame.new("Mario Bros 5")
game6 = VideoGame.new("Mario Bros 6")
game7 = VideoGame.new("Mario Bros 7")
game8 = VideoGame.new("Mario Bros 8")

users = [user1, user2, user3, user4, user5, user6, user7, user8]
games = [game1, game2, game3, game4, game5, game6, game7, game8]

100.times do 
  Purchase.new(users.sample(), games.sample())
end
### --- Mod 1 Code Challenge Review --- ###
binding.pry
"Pry does not like to be last!"
