class Encryption

  attr_reader :message,
              :shifts

  def initialize(message, key, date)
    @message = message
    @shifts = Shifts.for_encryption(key, date).set
  end

end
