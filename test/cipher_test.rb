require './test/test_helper'
require './lib/cipher'

class CipherClass
  include Cipher

  def characters
    ('a'..'z').to_a << ' '
  end

  def split_message
    ['m', 'e', 's', 's', 'a', 'g', 'e']
  end

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

  def test_it_can_encrypt_sets_of_four
    message = ['t', 'e', 's', 't']
    expected = ' gy '

    assert_equal expected, @cipher.encrypt_4_digits(message)
  end

end
