class MoviesController < ApplicationController
  def index
    if params[:query].present?
    #   sql_query = " \
    #     movies.title @@ :query \
    #     OR movies.synopsis @@ :query \
    #     OR directors.first_name @@ :query \
    #     OR directors.last_name @@ :query \
    #   "
    #   @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
    @movie = Movie.search_by_title_and_syllabus
    else
      @movies = Movie.all
    end
  end
end
