require './lib/characters'
require './lib/shifts'

class Decipher

  include Characters

  attr_reader :split_input,
              :shifts,
              :message

  def initialize(input, key, date)
    @split_input = input.split('')
    @shifts = Shifts.new(key, date).set
    @message = decrypt
  end

  def decrypt
    counter = 0
    split_input.map do |letter|
      new_char = decrypt_digit(letter, counter)
      counter == 3 ? counter = 0 : counter += 1
      new_char
    end.join
  end

  def decrypt_digit(letter, index)
    if characters.include?(letter)
      shift_chars = characters.rotate(-shifts[index])
      shift_chars[characters.index(letter)]
    else
      letter
    end
  end

end
