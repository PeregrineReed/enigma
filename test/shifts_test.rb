require './test/test_helper'
require './lib/shifts'

class ShiftsTest < Minitest::Test

  def setup
    @shifts = Shifts.new("00001", "200792")
  end

  def test_it_exists
    assert_instance_of Shifts, @shifts
  end

  def test_it_has_a_key
    assert_equal "00001", @shifts.key
  end

  def test_it_has_a_date
    assert_equal "200792", @shifts.date
  end

  def test_it_can_make_offsets
    expected = ['7', '2', '6', '4']

    assert_equal expected, @shifts.make_offsets
  end

end
