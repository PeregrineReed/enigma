require './test/test_helper'
require './lib/shifts'

class ShiftsTest < Minitest::Test

  def setup
    @shifts = Shifts.new
  end

  def test_it_exists
    assert_instance_of Shifts, @shifts
  end

  def test_it_can_take_arguments
    shifts = Shifts.new(key: "30030", date: "050119")

    assert_instance_of Shifts, shifts
  end

end
