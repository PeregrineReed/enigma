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

  def test_it_has_a_key
    assert_equal "00001", @shifts.key
  end

  def test_it_has_a_date
    assert_equal "200792", @shifts.date
  end

end
