class Shifts

  attr_reader :set,
              :key,
              :date

  def initialize(set, key, date)
    @set = set
    @key = key
    @date = date
  end

  def self.for_encryption(key, date)
    shifts = keys(key).zip(offsets(date))
    set = shifts.map do |pair|
      pair[0].to_i + pair[1].to_i
    end.flatten
    Shifts.new(set, key, date)
  end

  def self.offsets(date)
    date_squared = date.to_i ** 2
    offsets = date_squared.to_s[-4..-1]
    offsets.split('')
  end

  def self.make_key_pairs(key)
    key_list = []
    key.split('').each_cons(2) do |key|
      key_list << key
    end
    key_list
  end

  def self.keys(key)
    make_key_pairs(key).map do |pair|
      pair.join
    end.flatten
  end

end
