class Cipher

  attr_reader :input,
              :shifts,
              :message

  def initialize(input, key, date)
    @input = input
    @shifts = Shifts.for_encryption(key, date).set
    @message = encrypt
  end

  def characters
    ('a'..'z').to_a << ' '
  end

  def encrypt
    code = []
    split_message.each_slice(4) do |slice|
      code << encrypt_4_digits(slice)
    end
    code.join
  end

  def split_message
    @input.split('')
  end

  def encrypt_4_digits(four)
    four.map do |letter|
      shift = @shifts[four.index(letter)]
      index = characters.index(letter)
      characters.rotate(shift).values_at(index)
    end.flatten.join
  end

end
