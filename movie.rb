# movie.rb

class Movie 
  attr_accessor :title, :genre

  def initialize(title, genre)
    @title = title
    @genre = genre
  end

  def list_details
    "#{@title} is a #{@genre} film"
  end
end
