require_relative 'printboard'
require_relative 'player'
require_relative 'checkifwinner'



# Create instances for 2 players
class Game
  @b=Printboard.new
  @b.boardprint
  puts 'Player 1'
  @player1=Player.new('x')
  puts 'Player2'
  @player2=Player.new('o')

  # Play
  @chosen_index=[]
  @check=Winner.new()
  @w=''

  loop do
    loop do
      @i1=@player1.input()
      if @chosen_index.include? @i1
        puts 'Sorry, the position is not available. Please try again!'
        next
      elsif @chosen_index.length <9 
        @chosen_index.append(@i1)
        @b.updateboard(@i1,'x')
        @b.boardprint
        print 
        break
      end
    end
    @w=@check.checking(@b.currentboard)
    break if @chosen_index.length ==9 or  @w == 'x won' or @w =='o won' #condition stop game
    loop do
      @i2=@player2.input()
      if @chosen_index.include? @i2
        puts 'Sorry, the position is not available. Please try again!'
        next
      elsif @chosen_index.length <9 
        @chosen_index.append(@i2)
        @b.updateboard(@i2,'o')
        @b.boardprint
        break
      end
    end
  end

  if @w =='x won'
    name=@player1.winner
    puts 'Congrats! ' + name +' won' +' (っ＾▿＾)۶🍸🌟🍺٩(˘◡˘ )'
  end

  if @w=='o won'
    name=@player2.winner
    puts 'Congrats! ' + name +' won' +' (っ＾▿＾)۶🍸🌟🍺٩(˘◡˘ )'
  end

end
