require_relative "../marvel_api"
require "test/unit"
 
class TestMarvelApi < Test::Unit::TestCase
 
  def test_simple
    assert_equal(200, MarvelApi.new.get_all_characters_list.status )
  end
    
  def test_simple2
    assert_equal(200, MarvelApi.new({character_id: 1011334}).get_character.status )
  end
end
