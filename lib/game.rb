require 'pry'
require_relative 'board'
#require_relative 'boardcase'
require_relative 'player'
require_relative 'show'

class Game < Board

attr_accessor :players #:game_number

  def initialize#(game_numb)
    #@game_number = game_numb
    puts "Joueur 1, quel est ton nom ?"
    print " > "
    name_player1 = gets.chomp
    puts "Joueur 2, quel est ton nom ?"
    print " > "
    name_player2 = gets.chomp
    puts " "
    puts " merci on va pouvoir commencer ! "
    @boardgame = Board.new(name="jeu")
    player2 = Player.new(name_player2, symbol="X")
    player1 = Player.new(name_player1, symbol="O")
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
      while z != 9 || victory? != false
      puts "#{@players[i].name} choisit une case : "
      input_position = gets.chomp
      @boardgame.find_index_change_state(input_position)
      player= @players[i]
      i=i+1
      z=z+1
      #p @boardgame
      victory? 
      #show_board(@boardgame)
        if i==2
          i=0
        end

      end

  end

   
    #
    # a1 a2 a3
    # b1 b2 b3
    # c1 c2 c3
    #
    # victoire si 
    # A1 A2 A3  0 1 2
    # B1 B2 B3  3 4 5
    # C1 C2 C3  6 7 8
    # A3 B2 C1  2 4 6
    # A1 B2 C3  0 4 8
    # A2 B2 C2  1 4 7 
    # A1 B1 C1  0 3 8 
    # A3 B3 C3  2 5 8 

    def victory?

      if @boardgame.cases[0].state == @boardgame.cases[1].state && @boardgame.cases[0].state == @boardgame.cases[2].state && @boardgame.cases[0].state == "X" && @boardgame.cases[0].state != ""   
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[3].state == @boardgame.cases[4].state && @boardgame.cases[4].state == @boardgame.cases[5].state && @boardgame.cases[4].state == "X" && @boardgame.cases[4].state != "" 
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[6].state == @boardgame.cases[7].state && @boardgame.cases[8].state == @boardgame.cases[7].state && @boardgame.cases[7].state == "X" && @boardgame.cases[7].state != ""
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[2].state == @boardgame.cases[4].state && @boardgame.cases[6].state == @boardgame.cases[4].state && @boardgame.cases[4].state == "X" && @boardgame.cases[4].state != ""
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[0].state == @boardgame.cases[4].state && @boardgame.cases[8].state == @boardgame.cases[4].state && @boardgame.cases[8].state == "X" && @boardgame.cases[8].state != ""
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[1].state == @boardgame.cases[4].state && @boardgame.cases[4].state == @boardgame.cases[7].state && @boardgame.cases[4].state == "X" && @boardgame.cases[4].state != ""
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[0].state == @boardgame.cases[3].state && @boardgame.cases[3].state == @boardgame.cases[8].state && @boardgame.cases[8].state == "X" && @boardgame.cases[8].state != ""
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[2].state == @boardgame.cases[5].state && @boardgame.cases[8].state == @boardgame.cases[2].state && @boardgame.cases[5].state == "X" && @boardgame.cases[5].state != ""
        
        puts "You win, #{@players[0].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      
      
      
      
      elsif @boardgame.cases[0].state == @boardgame.cases[1].state && @boardgame.cases[0].state == @boardgame.cases[2].state && @boardgame.cases[0].state == "O" && @boardgame.cases[0].state != ""   
        
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[3].state == @boardgame.cases[4].state && @boardgame.cases[4].state == @boardgame.cases[5].state && @boardgame.cases[4].state == "O" && @boardgame.cases[4].state != "" 
        
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[6].state == @boardgame.cases[7].state && @boardgame.cases[8].state == @boardgame.cases[7].state && @boardgame.cases[7].state == "O" && @boardgame.cases[7].state != ""
        
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[2].state == @boardgame.cases[4].state && @boardgame.cases[6].state == @boardgame.cases[4].state && @boardgame.cases[4].state == "O" && @boardgame.cases[4].state != ""
        
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[0].state == @boardgame.cases[4].state && @boardgame.cases[8].state == @boardgame.cases[4].state && @boardgame.cases[8].state == "O" && @boardgame.cases[8].state != ""
        
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        play_again?
      elsif @boardgame.cases[1].state == @boardgame.cases[4].state && @boardgame.cases[4].state == @boardgame.cases[7].state && @boardgame.cases[4].state == "O" && @boardgame.cases[4].state != ""
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        
        play_again?
      elsif @boardgame.cases[0].state == @boardgame.cases[3].state && @boardgame.cases[3].state == @boardgame.cases[8].state && @boardgame.cases[8].state == "O" && @boardgame.cases[8].state != ""
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        
        play_again?
      elsif @boardgame.cases[2].state == @boardgame.cases[5].state && @boardgame.cases[8].state == @boardgame.cases[2].state && @boardgame.cases[5].state == "O" && @boardgame.cases[5].state != ""
        puts "You win, #{@players[1].name} !!!!!!!!!!!! Congratulations !!!!!!!!!!!!!!!!!!!!"
        
        play_again?

      
      end

    end
  
    def play_again?

      puts " On rejoue ? "
      puts "1 - oui"
      puts "2 - non"
      print "> "
      input = gets.chomp 
      if 
        input == "1"
        jeu2 = Game.new 
        jeu2.round
      else 
      puts " à bientôt "
      exit
      end
    end
end

#binding.pry
#jeu =Game.new
#jeu.round