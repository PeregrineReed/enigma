require './test/test_helper'
require './lib/shifts'
require './lib/characters'
require './lib/decipher'
require './lib/cipher'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new('message', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_a_message
    assert_equal 'message', @enigma.message
  end

  def test_it_has_a_key
    assert_equal '00001', @enigma.key
  end

  def test_it_can_generate_a_key
    skip
    enigma = Enigma.new("testing testing")
    actual = /\d\d\d\d\d/ =~ enigma.key
    assert_equal true, actual
  end

end
