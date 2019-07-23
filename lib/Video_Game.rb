class VideoGame
  attr_reader :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all 
    @@all
  end

  def purchases
    Purchase.all.select {|purchase| purchase.game == self}
  end

  def owners
    purchases().map {|purchase| purchase.steam_user.account_name}
  end

  def self.find_by_name(video_game_name)
    self.all.find {|game| game.title == video_game_name}
  end

  def self.most_purchased_game
    VideoGame.all.max_by do |game|
      game.owners.length
    end
  end
end
