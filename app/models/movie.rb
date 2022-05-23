class Movie < ActiveRecord::Base

    # def self.find_all_movies_by_year(year)
    #     Movie.where(year: year)
    # end
    def self.create_with_title(title)
        new_movie = Movie.new(title:title, release_date: nil, director: nil, lead:nil, in_theaters:nil)
        new_movie.save
    end

    def self.first_movie
        Movie.first
    end
    
    def self.last_movie
        Movie.last
    end
    
    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    
    def find_movie_with_attributes(att)
       Movie.find_by(att)         
    
    end
    def find_movies_after_2002(year)
        Movie.where(year: year)
    end

    def update_with_attributes(movie)

    end
    
    def self.update_all_titles
        Movie.update

    end

    def self.delete_by_id(id)
        destroy(id)

    end

    def self.delete_all_movies
        Movie.destroy_all
    end


end