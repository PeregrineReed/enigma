require './test/test_helper'
require './lib/decipher'

class DecipherClass
  include Decipher

  def initialize(shifts)
    @shifts = shifts
  end

  def split_message
    ['t', 'g', 'y', 'y', 'h', 'i', 'k']
  end

  def characters
    ('a'..'z').to_a << ' '
  end

end

class DecipherTest < Minitest::Test

  def setup
    @decipher = DecipherClass.new([7,2,6,5])
  end

  def test_it_exists
    actual = DecipherClass.included_modules.any? do |mod|
      mod == Decipher
    end

    assert_equal true, actual
  end

  def test_it_can_decrypt_sets_of_four
    message = [' ', 'g', 'y', ' ']
    expected = 'test'

    assert_equal expected, @decipher.decrypt_4_digits(message)
  end

  def test_it_can_decrypt_any_length_message
    expected = 'message'

    assert_equal expected, @decipher.translate
  end

end
