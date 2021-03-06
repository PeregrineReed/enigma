require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_todays_date
    expected = Date.today.strftime('%d%m%y')

    assert_equal expected, @enigma.today
  end

  def test_it_can_encrypt
    expected = {
      encryption: 'tgyxhik',
      key: '00001',
      date: '200792'
    }

    actual = @enigma.encrypt('message', '00001', '200792')

    assert_equal expected, actual
  end

  def test_it_can_generate_todays_date_for_encrypting
    expected = Date.today.strftime('%d%m%y')
    actual = @enigma.encrypt("testing testing", "12345")
    assert_equal expected, actual[:date]
  end

  def test_it_can_make_a_random_key
    actual = !!(@enigma.rand_key =~ /\d{5}/)

    assert_equal true, actual
  end

  def test_it_can_generate_a_key_for_encrypting
    enigma = @enigma.encrypt("testing testing")
    # To clarify I understand what I'm doing:
    # in the parentheses, if the enigma[:key]
    # contains any values from 0-9, 5 times, the return
    # would be the index where the match starts.
    # The !! outside the parentheses converts
    # the outcome to a boolean.
    actual = !!(enigma[:key] =~ /\d{5}/)

    assert_equal true, actual
  end

  def test_it_can_decrypt
    expected = {
      decryption: 'message',
      key: '00001',
      date: '200792'
    }
    actual = @enigma.decrypt('tgyxhik', '00001', '200792')

    assert_equal expected, actual
  end

  def test_it_includes_interface
    actual = Enigma.included_modules.any? do |mod|
      mod == Interface
    end
    assert_equal true, actual
  end

  def test_it_can_crack_an_encrypted_message_using_the_date
    expected = {
      decryption: 'message end',
      key: '99999',
      date: '311299'
    }
    actual = @enigma.crack('k jkzbwsciv', '311299')

    assert_equal expected, actual
  end

end
