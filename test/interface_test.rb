require './test/test_helper'
require './lib/interface'

class InterfaceTest < Minitest::Test

  def setup
    @test_class = mock
    @interface = Interface.new(@test_class)
  end

  def test_it_exists
    assert_instance_of Interface, @interface
  end

  def test_it_has_a_subject
    assert_equal @test_class, @interface.subject
  end

  def test_it_starts_with_no_commands
    assert_equal [], @interface.commands
  end

end
