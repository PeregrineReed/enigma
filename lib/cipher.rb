class Cipher

  attr_reader :split_input,
              :shifts,
              :message

  def initialize(input, key, date)
    @split_input = input.split('')
    @shifts = Shifts.new(key, date).set
    @message = encrypt
  end

  def characters
    ('a'..'z').to_a << ' '
  end

  def encrypt
    code = []
    split_input.each_slice(4) do |slice|
      code << encrypt_4_digits(slice)
    end
    code.join
  end

  def encrypt_4_digits(four)
    four.map do |letter|
      shift = @shifts[four.index(letter)]
      index = characters.index(letter)
      characters.rotate(shift).values_at(index)
    end.flatten.join
  end

end
