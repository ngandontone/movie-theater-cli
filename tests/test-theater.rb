# test-theater.rb

require "minitest/autorun"
require "./theater"

class TestTheater < Minitest::Test
  
  def test_list_movies
    theater = Theater.new
    
    assert_equal [], theater.list_movies, "List movies failed"
  end
end