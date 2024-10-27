def caesar_cipher(string, number)
  character_list = string.split("")

  cipher = character_list.collect do |character|
    ord_character = character.ord + number

    unless ((char_lowcase?(character)) || (char_upcase?(character)))
      character
    else
      unless ((char_lowcase?(ord_character)) || (char_upcase?(ord_character)))
        (character.ord + number - 26).chr
      else
        (character.ord + number).chr
      end
    end
  end

  cipher.join("")
end

def char_lowcase?(character)
  character.ord.between?(65, 90)
end

def char_upcase?(character)
  character.ord.between?(97, 122)
end

p caesar_cipher("What a string!", 5)
