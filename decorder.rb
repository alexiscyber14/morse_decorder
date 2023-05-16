

def decode_morse_code(morse_code)
  words = morse_code.split('   ')  # Split using triple spaces
  decoded_words = words.map do |word|
    letters = word.split(' ')
    decoded_letters = letters.map { |letter| MORSE_CODE[letter] }
    decoded_letters.join('')
  end
  decoded_words.join(' ')
end

# Example usage
morse_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_morse_code(morse_code)
puts decoded_message
