module Cipher

  def encrypt_4_digits(four)
    four.map do |letter|
      shift = @shifts[four.index(letter)]
      index = characters.index(letter)
      characters.rotate(shift).values_at(index)
    end.flatten.join
  end

  def translate
    code = []
    split_message.each_slice(4) do |slice|
      code << encrypt_4_digits(slice)
    end
    code.join
  end

end
