require './test/test_helper'
require './lib/interface'

class InterfaceTest < Minitest::Test

  def setup
    test_class = mock
    @interface = Interface.new(test_class)
  end

  def test_it_exists
    assert_instance_of Interface, @interface
  end

end
