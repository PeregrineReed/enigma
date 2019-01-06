require './test/test_helper'
require './lib/shifts'

class ShiftsTest < Minitest::Test

  def setup
    shifts = [7, 2, 6, 5]
    @shifts = Shifts.new(shifts, "00001", "200792")
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

  def test_it_has_a_set
    expected = [7, 2, 6, 5]

    assert_equal expected, @shifts.set
  end

  def test_it_can_make_offsets
    expected = ['7', '2', '6', '4']

    assert_equal expected, Shifts.offsets("200792")
  end

  def test_it_can_make_key_pairs
    expected = [
      ["0", "0"],
      ["0", "0"],
      ["0", "0"],
      ["0", "1"]
    ]

    assert_equal expected, Shifts.make_key_pairs('00001')
  end

  def test_it_can_make_keys
    expected = ['00', '00', '00', '01']

    assert_equal expected, Shifts.keys('00001')
  end

  def test_it_can_make_shifts
    skip
    expected = [7, 2, 6, 5]

    assert_equal expected, @shifts.make_shifts
  end

end
