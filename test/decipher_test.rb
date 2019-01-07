require './test/test_helper'
require './lib/shifts'
require './lib/decipher'

class DecipherTest < Minitest::Test

  def setup
    @decipher = Decipher.new('tgyyhik', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Decipher, @decipher
  end

  def test_it_has_an_input_message
    assert_equal 'tgyyhik', @decipher.input
  end

  def test_it_has_shifts
    assert_equal [7,2,6,5], @decipher.shifts
  end

  def test_it_has_a_list_of_characters
    expected = ('a'..'z').to_a << ' '

    assert_equal expected, @decipher.characters
  end

  def test_it_can_split_its_message
    expected = ['t', 'g', 'y', 'y', 'h', 'i', 'k']

    assert_equal expected, @decipher.split_input
  end

  def test_it_can_decrypt_sets_of_four
    skip
    message = [' ', 'g', 'y', ' ']
    expected = 'test'

    assert_equal expected, @decipher.decrypt_4_digits(message)
  end

  def test_it_can_decrypt_any_length_message
    skip
    expected = 'message'

    assert_equal expected, @decipher.translate
  end

end
