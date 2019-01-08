require './test/test_helper'
require './lib/interface'

class InterfaceTest < Minitest::Test

  class InterfaceClass
    include Interface
  end

  def setup
    @interface = InterfaceClass.new
  end

  def test_it_exists
    assert_instance_of Interface, @interface
  end

end
