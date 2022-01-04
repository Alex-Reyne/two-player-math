class Game

  def initialize
    @p1 = Player.new('Player1', true)
    @p2 = Player.new('Player2', false)
    @question = Questions.new
  end

  def question_prompt

    if @p1.is_turn
      player = @p1
    else
      player = @p2
    end

    q = @question.question_gen
    puts "#{player.name}: What does #{q[0]} plus #{q[1]} equal"
    player_input = gets.chomp.to_i

    if @question.check_answer(player_input, q[0] + q[1])
      @p1.turn_change
      @p2.turn_change
      turn_prompt
    else
      player.lose_life
      
      if player.lives <= 0

        if player == @p1
          player = @p2
        else
          player = @p1
        end

        winner_prompt(player)
      else
        @p1.turn_change
        @p2.turn_change
        turn_prompt
      end
    end

  end

  def turn_prompt
    puts '--- NEW TURN ---'
    question_prompt
  end

  def winner_prompt player
    puts "#{player.name} Wins! with a score of #{player.lives}/3"
    puts "--- GAME OVER ---"
  end

end