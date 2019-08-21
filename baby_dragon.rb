require 'colorize'

class BabyDragon
  
  MAX_SATIATION = 10
  
  attr_reader :name, :color, :dragon_pic
  
  
  def initialize(input_name)
    @name = input_name
    @stuff_in_belly = 0
    @color = 'red'
    @is_asleep = false
    
    puts "Baby dragon #{@name} is born!".colorize(:color => :black, :background => :white)
  end
  
  def show_pic
    @dragon_pic = [
    "                     ___====-_  _-====___ ",
    "               _ -^^^      //     \\\\     ^^^--_",
    "              _-^         // (    ) \\\\         ^-_",
    "             -           //  |\\^^/|  \\\\            -",
    "           _/           //   (0::0)   \\\\            \\_",
    "          /            ((     \\\\//     ))             \\ ",
    "        -               \\\\    (oo)    //               -",
    "       -                 \\\\  / \\/ \\  //                 -",
    "      -                   \\\\/      \\//                   -",
    "    / /|           /\\      (        )      /\\           |\\ \\",
    "    |/ | /\\_/\\_/\\_/  \\_/\\  (   /\\   )  /\\_/  \\_/\\_/\\_/\\ | \\|",
    "    `  |/  V  V  `    V  \\_(| |  | |)_/  V    '  V  V  \\|  '",
    "       `   `  `       `   / | |  | | \\   '       '  '   '",
    "                        <(  | |  | |  )>             ",
    "                       <__\\_| |  | |__\\__>           ",
    "                       ^^^^ ^^^  ^^^ ^^^^^"]
    
    color_sym = @color.to_sym
    @dragon_pic.each do |line|
      puts line.colorize(color_sym)
    end
  end
  
  def play
    puts "#{@name} is playing by juggling different knives"
    
    make_time_pass
  end
  
  def check_color(show_picture = true)
    if @stuff_in_belly <= 4
      @color = 'red'
    end
    self.show_pic if show_picture == true
    return "#{@name}'s color is #{@color}"
  end
  
  def check_feeling
    check_color(false)
    case @color
    when 'red'
      puts "#{@name} is ANGRY!! Super hungry!".colorize(:color => :black, :background => :red)
    when 'green'
      puts "#{@name} is full & happy, hugs!!!!".colorize(:color => :black, :background => :yellow)
    else
      puts "#{@color}???"
    end
  end
  
  def eat
    @stuff_in_belly = MAX_SATIATION
    @color = 'green'
    puts "#{@name} just ate a full meal of dragonfruit"
    
    make_time_pass
  end
  
  
  def sleep
    @is_asleep = true
    puts "#{@name} cuddles with a stuffed animal dragon and falls asleep..."
    
    3.times do
      make_time_pass
    end
    
    @is_asleep = false
  end
  
  def make_time_pass(printTimePassing = true)
    if printTimePassing == true
      puts "\nTime is passing... ... ... ...\n\n" 
    end
    
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      self.check_color
      puts "#{@name.upcase} EATS YOU! :-(".colorize(:color => :black, :background => :red)
      exit
    end
  end
  
end