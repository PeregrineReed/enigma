class Decipher

  attr_reader :input,
              :shifts

  def initialize(input, key, date)
    @input = input
    @shifts = Shifts.new(key, date).set
  end

  def characters
    ('a'..'z').to_a << ' '
  end

  def decrypt_4_digits(four)
    four.map do |letter|
      shift = @shifts[four.index(letter)]
      index = characters.index(letter)
      characters.rotate(-shift).values_at(index)
    end.flatten.join
  end

  def translate
    code = []
    split_message.each_slice(4) do |slice|
      code << decrypt_4_digits(slice)
    end
    code.join
  end

end
