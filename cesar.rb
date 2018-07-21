def number_of_cesar(sentence, shift_number)
  phrase_array = sentence.chars.map do |char|
    if ("A".."Z").include?(char)
    char_to_ascii= char.ord
    char_to_temp= char_to_ascii - 64 + shift_number
    back_to_ascii= char_to_temp % 26 + 64
    back_to_code= back_to_ascii.chr

      elsif ("a".."z").include?(char)
      char_to_ascii= char.ord
      char_to_temp= char_to_ascii - 96 + shift_number
      back_to_ascii= char_to_temp % 26 + 96
      back_to_code= back_to_ascii.chr

      else
      back_to_code= char
      end
                end
                phrase_array.join("")
end

puts number_of_cesar("What a string", 5)
