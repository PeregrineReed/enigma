require './test/test_helper'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption = Encryption.new('message')
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption
  end

end
