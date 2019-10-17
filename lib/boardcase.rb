require 'pry'
require_relative 'player'
require_relative 'board'

class BoardCase
  
  attr_accessor :state , :position

  def initialize(boardcase_position)
 @state = ""
 @position = boardcase_position
  end 

def inter(boardcase)
boardcase.change_state(player_symbol)
end

def change_state(player_symbol)
  @state = player_symbol
end

end
