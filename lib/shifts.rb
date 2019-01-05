class Shifts

  attr_reader :key,
              :date

  def initialize(key: "00001", date: "200792")
    @key = key
    @date = date
  end

end
