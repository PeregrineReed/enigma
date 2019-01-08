class Enigma

  attr_reader :today

  def initialize
    @today = Date.today.strftime('%d%m%y')
  end

  def encrypt(message, key, date = @today)
    cipher = Cipher.new(message, key, date)
    {
    encryption: cipher.message,
    key: key,
    date: date
    }
  end

  def rand_key
    nums = (1..99999).to_a
    key = nums.sample.to_s
    key.length < 5 ? key.rjust(5, '0') : key
  end

end
