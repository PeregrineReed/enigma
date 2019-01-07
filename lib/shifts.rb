class Shifts

  attr_reader :set,
              :key,
              :date

  def initialize(key, date)
    @key = key
    @date = date
    @set = for_translation
  end

  def for_translation
    shifts = keys.zip(offsets)
    set = shifts.map do |pair|
      pair[0].to_i + pair[1].to_i
    end.flatten
  end

  def offsets
    date_squared = date.to_i ** 2
    offsets = date_squared.to_s[-4..-1]
    offsets.split('')
  end

  def make_key_pairs
    key_list = []
    key.split('').each_cons(2) do |key|
      key_list << key
    end
    key_list
  end

  def keys
    make_key_pairs.map do |pair|
      pair.join
    end.flatten
  end

end
