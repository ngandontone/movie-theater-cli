require "./movie"

class Theater
  
  def initialize
    @movies = []
  end

  def start
    loop do
        puts "\n"
        puts "Welcome to Movie Theater CLI"
        puts "1. Add a Movie"
        puts "2. List all Movies"
        puts "3. Watch a Movie"
        puts "4. Exit"
        print "Choose an option: "
        
        choice = gets.chomp.to_i
        
        puts "\n"

        case choice
        when 1
          add_movie
        when 2
          list_movies
        when 3
          puts "Did you really think you could watch a movie on the CLI?"
        when 4
          puts "See ya next time!"
          break
        else
          puts "Invalid choice."
        end
    end
  end

  def add_movie
    print "Enter a movie title: "
    title = gets.chomp
    print "Enter the movie's genre: "
    genre = gets.chomp
    @movies << Movie.new(title,genre)
    puts "Movie was added to the catalogue."
  end

  def list_movies
    puts "Movies in the catalogue:"
    @movies.each do |movie|
    puts movie.list_details
    end
  end
end