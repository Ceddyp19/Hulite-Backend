class MoviesController < ApplicationController

    def index
        @movies = Movie.all
        puts "==================="
        puts params
        puts @movies
        render json: @movies
    end

    def create 
        @movie = Movie.create([params])
    end

end