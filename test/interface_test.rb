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
    actual = InterfaceClass.included_modules.any? do |mod|
      mod == Interface
    end
    assert_equal true, actual
  end

end
