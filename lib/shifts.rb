class Shifts

  attr_reader :set,
              :key,
              :date

  def initialize(set, key, date)
    @set = set
    @key = key
    @date = date
  end

  def self.make_offsets(date)
    date_squared = date.to_i ** 2
    offsets = date_squared.to_s[-4..-1]
    offsets.split('')
  end

  def list_keys
    key_list = []
    key.split('').each_cons(2) do |key|
      key_list << key
    end
    key_list
  end

  def make_keys
    list_keys(key).map do |pair|
      pair.join
    end.flatten
  end

  def make_shifts
    shifts = make_keys.zip(make_offsets)
    shifts = shifts.map do |pair|
      pair[0].to_i + pair[1].to_i
    end.flatten
  end

end
