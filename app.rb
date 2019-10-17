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

def perform
welcome_message
puts " "
puts " "
jeu = Game.new
puts " "
puts "êtes vous prêt ?? "
puts " "
puts "------- Appuyez sur Entrée pour commencer ----------"
puts " " 
gets.chomp
puts " "
puts " Choisis une des valeurs suivantes A1, A2, A3, B1, B2, B3, C1, C2 et C3 tel que :"
puts " "
puts " "
puts "      A1 | A2 | A3     "
puts "      ___ ____ ___"
puts " "
puts "      B1 | B2 | B3     "
puts "      ___ ____ ___"
puts " "
puts "      C1 | C2 | C3     "
puts "  " 
jeu.round
play_again?
end
perform 