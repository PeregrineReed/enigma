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

end
