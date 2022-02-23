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

def decode_word(code_word)
  morse_word = code_word.split
  result = ''
  morse_word.each do |char|
    result += if char == '/'
                ' '
              else
                decode_char(char)
              end
  end
  result
end

def decode_sentence(sentence)
  morse_sentence = sentence.split('   ')
  result = ''
  morse_sentence.each do |word|
    result += "#{decode_word(word)} "
  end
  result
end

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
