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

  def list_keys
    key_list = []
    key.split('').each_cons(2) do |key|
      key_list << key
    end
    key_list
  end

  def make_keys
    list_keys.map do |pair|
      pair.join
    end.flatten
  end

end
