class Printboard
  def initialize
    @board= [[1,2,3],[4,5,6],[7,8,9]]
  end
  def boardprint
    @board.each do |board_row|
        p " --------- "
        p board_row.map {|element | '| ' + element.to_s+ ' '}.join
    end
  end
  attr_reader :board

  def updateboard(playerchoice,value)
    row_no=(playerchoice-1)/3
    col_no=playerchoice%3 -1
    @board[row_no][col_no]=value
  end
  def currentboard
    return @board
  end
end