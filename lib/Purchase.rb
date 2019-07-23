class Purchase
  attr_reader :game, :steam_user, :purchase_date
  
  @@all = []
  
  def initialize(steam_user, game, purchase_date = Time.now)
    @steam_user = steam_user
    @game = game
    @purchase_date = purchase_date
    @@all << self
  end

  def self.all
    @@all
  end
end
