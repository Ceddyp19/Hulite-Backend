class UserMoviesController < ApplicationController

    def index
        @user_movies = UserMovie.all.select {|usermovie| usermovie.user_id === decoded_token[0]['user_id']}
        render json: @user_movies
    end

    def show 
        @user_movie = UserMovie.find(params[:id])
        render json: @user_movie
    end

    def create 
        @user_movie = UserMovie.create(movie_id: params[:movie_id], user_id: decoded_token[0]['user_id'])
        render json: @user_movie
    end

    def destroy
        @user_movie = UserMovie.find_by(user_id: decoded_token[0]['user_id'], movie_id: params[:id])
        @user_movie.destroy
    end

end