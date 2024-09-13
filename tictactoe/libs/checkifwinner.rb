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
  
  end
end

f=Winner.new
print f.checking([['x','x','x'],[1,2,3],[4,5,6]])