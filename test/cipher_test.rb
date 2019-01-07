require './test/test_helper'
require './lib/cipher'

class CipherClass
  include Cipher

  def initialize(shifts)
    @shifts = shifts
  end
end

class CipherTest < Minitest::Test

  def setup
    @cipher = CipherClass.new([7,2,6,5])
  end

  def test_it_exists
    actual = CipherClass.included_modules.any? do |mod|
      mod == Cipher
    end

    assert_equal true, actual
  end

end
