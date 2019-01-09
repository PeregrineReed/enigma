require './test/test_helper'
require './lib/decipher'

class DecipherTest < Minitest::Test

  def setup
    @decipher = Decipher.new('tgyxhik', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Decipher, @decipher
  end

  def test_it_splits_its_input_message
    expected = ['t', 'g', 'y', 'x', 'h', 'i', 'k']

    assert_equal expected, @decipher.split_input
  end

  def test_it_has_shifts
    assert_equal [7,2,6,5], @decipher.shifts
  end

  def test_it_has_a_list_of_characters
    expected = ('a'..'z').to_a << ' '

    assert_equal expected, @decipher.characters
  end

  def test_it_ignores_symbols_not_included_in_characters
    assert_equal "m", @decipher.decrypt_digit("t", 0)
    assert_equal "1", @decipher.decrypt_digit("1", 0)
  end

  def test_it_can_decrypt_any_length_message
    decipher = Decipher.new('100%pqrkixpgkbdtwb', '12345', '080119')
    
    expected = 'message'

    assert_equal expected, @decipher.decrypt
    assert_equal '100% test coverage', decipher.decrypt
  end

  def test_it_initializes_with_its_message_decrypted
    expected = 'message'

    assert_equal expected, @decipher.message
  end

end
