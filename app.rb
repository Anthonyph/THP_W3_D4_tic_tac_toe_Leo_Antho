require 'bundler'
Bundler.require
require_relative 'lib/game.rb'
require_relative 'lib/show.rb'


def welcome_message
puts "#################################################"
puts "#                                               #"
puts "#          BIENVENUE DANS LE MORPION            #"
puts "#                 en RUBY                       #"
puts "#                                               #"
puts "#################################################" 
end 

def ask_name


return name_player1
end

def ask_name2

return name_player2
end

def perform
welcome_message
#name_player1 = ask_name
#name_player2 = ask_name2
jeu = Game.new
puts "êtes vous prêt ?? "
puts " "
puts "------- Appuyez sur Entrée pour commencer ----------"
puts " " 
gets.chomp 
jeu.round
play_again?
end
perform 