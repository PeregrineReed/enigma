require './test/test_helper'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption = Encryption.new('message')
  end

end
