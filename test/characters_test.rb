require './test/test_helper'
require './lib/characters'

class CharactersClass
  include Characters
end

class CharactersTest < Minitest::Test

  def setup
    @characters = CharactersClass.new
  end

  def test_it_exists
    actual = CharactersClass.included_modules.any? do |mod|
      mod == Characters
    end

    assert_equal true, actual
  end

  def test_it_has_a_list_of_characters
    expected = ('a'..'z').to_a << ' '

    assert_equal expected, @characters.characters
  end

end
