require 'pry'
require_relative 'board'
#require_relative 'boardcase'
require_relative 'player'

class Game

attr_accessor :players #:game_number

  def initialize#(game_numb)
    #@game_number = game_numb
    @boardgame = Board.new(name="jeu")
    player2 = Player.new(name="Antho", symbol="X")
    player1 = Player.new(name="leo", symbol="O")
    @players = [player1, player2]
    return @players
    p @boardgame
    #@player_turn = player1
    #@players=[player1,player2]
  end 
 
  def round
  i=0
  z=0
  player = @players[i]
      until z == 9 do
      puts "#{@players[i].name} choisit une case : "
      input_position = gets.chomp
      @boardgame.find_index_change_state(input_position)
      player= @players[i]
      i=i+1
      z=z+1
      p @boardgame
        if i==2
          i=0
        end

      end

  end

   
end


jeu =Game.new
jeu.round