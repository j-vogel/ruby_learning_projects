# ASCII A-Z is 65-90, a-z is 97-122

def caesar_cipher (sentence, shift_amount)
  sentence.split("").collect do |letter|
    if letter.ord.between?(65,90)
      letter = wrap_around_range(letter.ord, shift_amount, 65, 90).chr
    elsif letter.ord.between?(97,122)
      letter = wrap_around_range(letter.ord, shift_amount, 97, 122).chr
    else
      letter
    end
  end.join
end

#
def wrap_around_range(position, increment, down_limit, up_limit)
  if position + increment > up_limit
    position = (position + increment) - (up_limit - down_limit) - 1
  elsif position + increment < down_limit
    position = (position + increment) + (up_limit - down_limit) + 1
  else
    position += increment
  end
end

input = "Boy! What a string!"
puts caesar_cipher(input, -5)
