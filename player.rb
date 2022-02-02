class Player
  attr_accessor :player, :score

  def initialize(player)
    @player = player
    @score = 3
  end

  def loose_point
    @score -= 1
  end

  def game_over?
    @score == 1
  end
end