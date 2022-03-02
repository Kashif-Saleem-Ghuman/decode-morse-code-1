$dictionary = {
    '.-'   => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..'  => 'D',
    '.'    => 'E',
    '..-.' => 'F',
    '--.'  => 'G',
    '....' => 'H',
    '..'   => 'I',
    '.---' => 'J',
    '-.-'  => 'K',
    '.-..' => 'L',
    '--'   => 'M',
    '-.'   => 'N',
    '---'  => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.'  => 'R',
    '...'  => 'S',
    '-'    => 'T',
    '..-'  => 'U',
    '...-' => 'V',
    '.--'  => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
}

def get_letter(letter)
    @current_letter = $dictionary[letter]
    return @current_letter
end

def decode_word(word)
    @words = word.split
    @current_word = ''
    @words.each do |letter| get_letter(letter)
        @current_word += get_letter(letter)
    end
    print @current_word + ' '
    return @current_word
end
