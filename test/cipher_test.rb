require './test/test_helper'
require './lib/cipher'

class Cipher
  include Cipher

  def initialize(shifts)
    @shifts = shifts
  end
end

class CipherTest < Minitest::Test

  def setup
    @cipher = Cipher.new([7,2,6,5])
  end

end
