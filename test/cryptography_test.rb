require './test/test_helper'
require './lib/shifts'
require './lib/cryptography'

class CryptographyTest < Minitest::Test

  def setup
    @cryptography = Cryptography.new('message', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Cryptography, @cryptography
  end

  def test_it_has_an_input_message
    assert_equal 'message', @cryptography.input
  end

  def test_it_has_shifts
    assert_equal [7, 2, 6, 5], @cryptography.shifts
  end

  def test_it_has_a_list_of_characters
    expected = ('a'..'z').to_a << ' '

    assert_equal expected, @cryptography.characters
  end

  def test_it_can_split_its_message
    expected = ['m', 'e', 's', 's', 'a', 'g', 'e']

    assert_equal expected, @cryptography.split_message
  end

  def test_it_can_encrypt_sets_of_four
    message = ['t', 'e', 's', 't']
    expected = ' gy '

    assert_equal expected, @cryptography.encrypt_4_digits(message)
  end

  def test_it_can_encrypt_a_full_message
    expected = 'tgyyhik'

    assert_equal expected, @cryptography.encrypt
  end

  def test_it_initializes_with_its_message_encrypted
    assert_equal 'tgyyhik', @cryptography.message
  end

end
