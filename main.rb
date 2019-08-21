require './baby_dragon.rb'
require 'colorize'

puts
yoshi = BabyDragon.new("Yoshi")

gets

puts "\nWhat color is little #{yoshi.name}?"
gets
puts yoshi.check_color
gets

puts "How are they feeling?"
gets
puts yoshi.check_feeling
gets

while yoshi.color == 'red'
  print "Uh oh, do you want to feed #{yoshi.name}?\t>>> "
  input = gets.chomp
  if input == ""
    puts "You can't just not answer this question!"
  elsif input[0].upcase == "Y"
    yoshi.eat
  elsif input[0].upcase == "N"
    puts "uh no... you REALLY should feed him!"
  else
    puts "yeah, that's not a real answer!"
  end
  gets
end
gets

puts "\nLet's check on #{yoshi.name}!"
gets
puts yoshi.check_color
puts yoshi.check_feeling
gets

puts "\nGreat!  I'm going to stop feeding my dragon now!"
gets
10.times do
  yoshi.make_time_pass
  gets
end

