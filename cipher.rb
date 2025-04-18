def caesar_cipher(string, shift_factor)
  downcase_list = ('a'..'z').to_a
  upcase_list = ('A'..'Z').to_a
  target_string = string.split("")

  shifted_string = target_string.map do |character| 
    if downcase_list.include?(character)
      new_index = (downcase_list.index(character) + shift_factor) % 26
      downcase_list[new_index]
    elsif upcase_list.include?(character)
      new_index = (upcase_list.index(character) + shift_factor) % 26
      upcase_list[new_index]
    else
      character
    end
  end
  shifted_string.join("")
end