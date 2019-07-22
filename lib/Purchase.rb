class Purchase
  attr_accessor :date, :amount, :video_game, :steam_user

  @@all = []

  def initialize(amount, video_game, steam_user, date = Time.now)
    @amount = amount
    @video_game = video_game
    @steam_user = steam_user
    @date = date

    @@all << self
  end

  def self.all
    @@all
  end

end
