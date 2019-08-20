require './baby_dragon.rb'

puts
yoshi = BabyDragon.new("Yoshi")
gets
yoshi.show_pic
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
    gets
  elsif input[0].upcase == "Y"
    yoshi.eat
  else
    puts "uh no... you REALLY should feed him!"
    gets
  end
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

