require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "A ma droite Josiane !!!!"
player1 = Player.new("Josiane")
puts
puts "A ma gauche José !!!!"
player2 = Player.new("José")
puts
puts "Nos combattants ont l'air en forme !"
puts
player1.show_state
player2.show_state
puts
puts "1"
puts
puts "2"
puts
puts "3"
puts
puts "Fight"
puts
while player1.life_points > 0 && player2.life_points > 0
  player1.show_state
  puts
  player2.show_state
  puts

  player2.attacks(player1)
  puts
  puts "BIM !!!!"
  puts
  break if player2.life_points <= 0
    puts "Josiane a win !"

  player1.attacks(player2)
  puts
  puts "PAF !!!!"
  puts
  
  break if player1.life_points <=0
    puts "José a win !"
end
puts
puts "Un combat fort sympathique !!!"
