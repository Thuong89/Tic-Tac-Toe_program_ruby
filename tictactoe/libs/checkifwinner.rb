class Winner
  def checking(board)
    board.each do |row|
      if row.join == 'xxx' or row.join == 'ooo'
        return 'x won'
      end
    end
    board.transpose.each do |row|
      if row.join == 'xxx' or row.join == 'ooo'
        return 'o won'
      end
    end

    d1= (board[0][0]).to_s + (board[1][1]).to_s + (board[2][2]).to_s
    d2= (board[2][0]).to_s + (board[1][1]).to_s + (board[0][2]).to_s
    if d1=='xxx' or d2='xxx'
      return 'x won'
    end
    if d2=='ooo' or d2='ooo'
      return 'o won'
    end
  
  end
end
