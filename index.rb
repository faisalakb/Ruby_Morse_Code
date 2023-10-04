def decode_char(char)
  morse_code_map = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z',
    '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '.-.-.-' => '.', '--..--' => ',', '..--..' => '?', '-....-' => '-',
    '-.--.' => '(', '-.--.-' => ')', '/' => ' ', '' => ' '
  }

  morse_code_map.each do |key, value|
    return value if key == char
  end
end

def decode_word(word)
  word_array = []
  word = word.split
  word.each do |char|
    ch = decode_char(char)
    word_array.push(ch)
  end
  word_array.join
end

def decode_message(str)
  str_array = []
  words = str.split('   ')
  words.each do |word|
    decoded_word = decode_word(word)
    str_array.push(decoded_word)
  end
  str_array.join
end

puts decode_char('.-')
print decode_word('-- -.--')
print decode_message('-- -.-- -. .- -- .')
print decode_message('.- -... --- -..- ..-. ..- .-.. .-.. --- ..-. .-. ..- -... .. . ...')
