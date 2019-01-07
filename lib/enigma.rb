class Enigma

  attr_reader :message,
              :key

  def initialize(message, key, date)
    @message = message
    @key = key
  end
end
