require 'pry'
require_relative 'board'
require_relative 'boardcase'
require_relative 'game'


class Show 


    def show_board(board)
      #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
      puts "\n"
      puts "      1   2   3  "
      puts "\n"
      puts "     --- --- --- "
      puts "A   | #{@boardgame.cases[0].state} | #{@boardgame.cases[3].state}  | #{@boardgame.cases[6].state}  |"
      puts "     --- --- --- "
      puts "B   | #{@boardgame.cases[1].state}  |#{@boardgame.cases[4].state}  | #{@boardgame.cases[7].state}  |" 
      puts "     --- --- --- "
      puts "C   | #{@boardgame.cases[2].state}  |#{@boardgame.cases[5].state}  | #{@boardgame.cases[8].state}  |" 
      puts "     --- --- ---"
      puts "\n\n"
    end
    
  
end
