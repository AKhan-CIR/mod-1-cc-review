### ---------- AUTOMATED SEEDING ---------- ###

#Samples
game_types = ["RPG", "FPS", "RTS", "MOBA", "MMORPG", "2D Platormer", "Fighting", "Flight Simulator", "Survival", "Rhythm", "Simulation", "Strategy", "Sports"]

#create 50 Steam Users
50.times do SteamUser.new(Faker::FunnyName.two_word_name.split(" ").join(), rand(9..65), Faker::Nation.capital_city, game_types.sample(),Faker::Date.backward(900))
  puts "Sucessfully created SteamUser!"
end

#create 50 Video Games
50.times do VideoGame.new(Faker::Game.title)
  puts "Sucessfully created VideoGame!"
end

all_steam_users = SteamUser.all
all_games = VideoGame.all

#create 1000 purchases
1000.times do 
  steam_user = all_steam_users.sample()
  video_game = all_games.sample()
  Purchase.new(video_game, steam_user, Time.now)
  puts "Sucessfully created Purchase!"
end

test_user = SteamUser.all[0]
### ---------- END OF AUTOMATED SEEDING ---------- ###