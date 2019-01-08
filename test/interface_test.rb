require './test/test_helper'
require './lib/interface'

class InterfaceTest < Minitest::Test

  def setup
    @interface = Interface.new
  end

  def test_it_exists
    assert_instance_of Interface, @interface
  end

  def test_it_starts_with_no_commands
    assert_equal [], @interface.commands
  end

end
