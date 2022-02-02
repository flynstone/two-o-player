require "./player"
require "./question"

class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @player = @player_1
  end

  def current_player
    @player = @player_1 ? @player = @player_2 : @player = @player_1
  end

  def start
    # game loop
    while @player.score > 0
      # ask question
      question = Question.new
      puts "#{@player.player}: #{question.get_question}"
      # check answer
      user_input = gets.chomp.to_i
      # determine if user entered the correct answer or not. Return results accordingly
      if question.verify_result(user_input)
        puts "Yes! You are correct!"
      else
          # call player method to reduce lives by 1
        puts "Seriously? No!"
        @player.loose_point
      end
      #check active players lives count
      if @player.score > 0
        # if > 0 -> list scores for both players
        puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3"
        puts "----- NEW TURN -----"
        self.current_player
      else
        # if = 0 -> active player lost
        winner = @player == @player_1 ? @player_2 : @player_1
        puts "#{winner.score} wins with a score of #{winner.score}/3"
      end

    end

  end
end