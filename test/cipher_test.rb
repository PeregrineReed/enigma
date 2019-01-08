require './test/test_helper'
require './lib/shifts'
require './lib/characters'
require './lib/cipher'

class CipherTest < Minitest::Test

  def setup
    @cipher = Cipher.new('message', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Cipher, @cipher
  end

  def test_it_splits_its_input_message
    expected = ['m', 'e', 's', 's', 'a', 'g', 'e']

    assert_equal expected, @cipher.split_input
  end

  def test_it_has_shifts
    assert_equal [7, 2, 6, 5], @cipher.shifts
  end

  def test_it_has_a_list_of_characters
    expected = ('a'..'z').to_a << ' '

    assert_equal expected, @cipher.characters
  end

  def test_it_can_encrypt_sets_of_four
    message = ['t', 'e', 's', 't']
    expected = ' gy '

    assert_equal expected, @cipher.encrypt_4_digits(message)
  end

  def test_it_can_ignore_symbols_not_included_in_characters
    assert_equal ["u"], @cipher.encrypt_digit("h", 13, 7)
    assert_equal "1", @cipher.encrypt_digit("1", 0, nil)
  end

  def test_it_can_encrypt_a_full_message
    expected = 'tgyyhik'

    assert_equal expected, @cipher.encrypt
  end

  def test_it_initializes_with_its_message_encrypted
    assert_equal 'tgyyhik', @cipher.message
  end

end
