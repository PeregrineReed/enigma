class Enigma

  attr_reader :today

  def initialize
    @today = Date.today.strftime('%d%m%y')
  end

  def encrypt(message, key, date = @today)
    {
    encryption: message,
    key: key,
    date: date
    }
  end
end
