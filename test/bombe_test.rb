require './test/test_helper'
require './lib/bombe'

class BombeTest < Minitest::Test

  def setup
    @bombe = Bombe.new
  end

  def test_it_exists
    assert_instance_of Bombe, @bombe
  end

end
