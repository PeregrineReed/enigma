require './test/test_helper'
require './lib/shifts'

class ShiftsTest < Minitest::Test

  def setup
    @shifts = Shifts.new
  end

  def test_it_exists
    assert_instance_of Shifts, @shifts
  end

end
