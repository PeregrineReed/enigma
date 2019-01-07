require './test/test_helper'
require './lib/shifts'
require './lib/cipher'

class CipherTest < Minitest::Test

  def setup
    @cipher = Cipher.new('message', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Cipher, @cipher
  end

  def test_it_has_an_input_message
    assert_equal 'message', @cipher.input
  end

  def test_it_has_shifts
    assert_equal [7, 2, 6, 5], @cipher.shifts
  end

  def test_it_has_a_list_of_characters
    expected = ('a'..'z').to_a << ' '

    assert_equal expected, @cipher.characters
  end

  def test_it_can_split_its_message
    expected = ['m', 'e', 's', 's', 'a', 'g', 'e']

    assert_equal expected, @cipher.split_message
  end

  def test_it_can_encrypt_sets_of_four
    message = ['t', 'e', 's', 't']
    expected = ' gy '

    assert_equal expected, @cipher.encrypt_4_digits(message)
  end

  def test_it_can_encrypt_a_full_message
    expected = 'tgyyhik'

    assert_equal expected, @cipher.encrypt
  end

end
