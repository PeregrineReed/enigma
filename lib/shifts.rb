class Shifts

  attr_reader :key,
              :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def make_offsets
    date_squared = date.to_i ** 2
    offsets = date_squared.to_s[-4..-1]
    offsets.split('')
  end

end
