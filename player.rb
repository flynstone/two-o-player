class Player
  @@players = 0

  attr_reader :score, :short, :full 

  def initialize
    @@players += 1
    self.short = "P#{@@players}"
    self.full = "Player #{@@players}"
    self.score = 3
  end

  def loose_point
    self.score -= 1
  end

  def winner
    "#{score}/3"    
  end

  protected
  attr_writer :score, :short, :full
end