
def ceasar_cipher(yourtext,number)
  list=yourtext.split('')
  final_array=[]
  letter_number=("a".."z").each.with_index(1).to_h
  letter_number["z"]=0
  letter_number_capital = ("A".."Z").each.with_index(1).to_h
  letter_number_capital["Z"]=0
  number_letter=letter_number.invert
  number_letter_capital=letter_number_capital.invert
  for i in (0..list.length)
      x= list[i]
      if letter_number[x] != nil
	y= letter_number[x].to_i
	y=(y+number)%26
	result=number_letter[y]
	final_array << result
      elsif letter_number_capital[x] != nil
        y=letter_number_capital[x].to_i
	y=(y+number)%26
	result=number_letter_capital[y]
	final_array << result
      else
	final_array << x
      end
  end
  return final_array.join
end

p ceasar_cipher("What a string u!", 5)      
