require './test/test_helper'
require './lib/bombe'

class BombeTest < Minitest::Test

  def setup
    @bombe = Bombe.new("k jkzbwsciv\n", "311299")
  end

  def test_it_exists
    assert_instance_of Bombe, @bombe
  end

end
