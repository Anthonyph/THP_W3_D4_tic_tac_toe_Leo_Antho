require 'pry'
require_relative 'boardcase'
require_relative 'player'


class Board
attr_accessor :cases, :game_turn #nombre de coup joué
@@case_position = []
@@case_index = []
@@hash_tictactoe = {}

    def initialize(board_name)

      @game_turn=0
      boardcase_position_array = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
      @cases = []
      hash_index ={}
      
      for i in 0..8 do
      @cases << BoardCase.new(boardcase_position_array[i])
      @@case_position << boardcase_position_array[i]
      @@case_index << i
      end
      
      @@hash_index = [@@case_position, @@case_index].transpose.to_h
      p @@hash_index
      return @cases
      #p @cases
    end #init

    def find_index_change_state(input_position) #on cherche dans le boardcase 
      
      if @game_turn %2 ==0
      player_symbol = "X"
      else
      player_symbol = "O"
      end
      index= @@hash_index[input_position]
      @game_turn = @game_turn + 1
      #return index
      #changer l'état du boardcase correspondant en fonction du joueur
      self.cases[index].change_state(player_symbol)
    return @game_turn
    end
    
#################### test #############
    def find_case
      index=find_index(input_position)
      inter(@cases[index])
    end
###############"" test ###############""


############## pour le hash #####################
def change_state(position,symbol)	
  @@hash_tictactoe[position]=symbol
end
############## pour le hash #####################

#binding.pry

end #class
