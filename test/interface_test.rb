require './test/test_helper'
require './lib/interface'

class InterfaceTest < Minitest::Test

  def setup
    class = mock
    @interface = Interface.new(class)
  end

  def test_it_exists
    assert_instance_of Interface, @interface
  end

end
