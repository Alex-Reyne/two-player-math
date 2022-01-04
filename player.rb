class Player
  attr_accessor :name, :lives, :is_turn

  def initialize(name, turn)
    @name = name
    @lives = 3
    @is_turn = turn
  end

  def lose_life
    @lives -= 1
  end

  def turn_change
    if self.is_turn
      self.is_turn = false
    else
      self.is_turn = true
    end
  end
  
end