require './test/test_helper'
require './lib/shifts'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption = Encryption.new('message', '00001', '200792')
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption
  end

  def test_it_has_a_message
    assert_equal "message", @encryption.message
  end

  def test_it_has_shifts
    assert_equal [7, 2, 6, 5], @encryption.shifts
  end

  def test_it_can_split_its_message
    expected = ['m', 'e', 's', 's', 'a', 'g', 'e']

    assert_equal expected, @encryption.split_message
  end

end
