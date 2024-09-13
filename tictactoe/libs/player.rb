class Player

  def initialize(sign)
    puts "What's your name?"
    @name=gets.chomp
    @sign=sign
  end


  attr_reader :sign, :name

  def input
    puts "#{@name}'s turn: please choose the position you want to place your #{sign}: "
    gets.chomp.to_i
  end

  def winner
    return @name
  end
end

    
