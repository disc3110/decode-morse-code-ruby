def decode_char(code_char)
  morsecode = [
    '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
    '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
    '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
    '-.--', '--..'
  ]
  alphabeth = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  index = morsecode.find_index(code_char)
  alphabeth[index]
end

puts decode_char('--..')

def decode_word(code_word)
  morse_word = code_word.split
  result = ''
  morse_word.each do |char|
    result += decode_char(char)
  end
  result
end

puts decode_word("-- -.--")