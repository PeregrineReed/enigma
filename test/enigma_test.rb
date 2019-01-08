require './test/test_helper'
require './lib/shifts'
require './lib/characters'
require './lib/decipher'
require './lib/cipher'
require './lib/enigma'
require 'pry'
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_todays_date
    expected = Date.today.strftime('d','m','y')

    assert_equal expected, @enigma.date
  end

  def test_it_can_encrypt
    skip
    expected = {
      encryption: 'tgyyhik',
      key: '00001',
      date: '200792'
    }

    actual = @enigma.encrypt('message', '00001', '200792')

    assert_equal expected, actual
  end

  def test_it_can_generate_todays_date_for_encrypting
    skip
    expected = Date.today.strftime('d','m','y')
    actual = @enigma.encrypt("testing testing", "12345")
    assert_equal expected, actual
  end

  def test_it_can_generate_a_key_for_encrypting
    skip
    enigma = @enigma.encrypt("testing testing")
    actual = /\d\d\d\d\d/ =~ enigma.key
    assert_equal true, actual
  end

end
