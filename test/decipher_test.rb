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
