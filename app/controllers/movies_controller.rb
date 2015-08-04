class MoviesController < ApplicationController
                          #should not be 'ActionController'

  def index
    @list_of_directors = Director.all

  end

  def add_movie


  end

  def create_new_movie
    @title = params["the_title"]
    @year = params["the_year"]
    @duration = params["the_duration"]
    @description = params["the_description"]
    @image_url = params["the_source"]

    i = Movie.new
    i.title = @title
    i.year = @year
    i.duration = @duration
    i.description = @description
    i.image_url = @image_url

    i.save
    redirect_to "/movies"
  end

  def add_actor


  end

  def create_new_actor
    @name = params["the_name"]
    @dob = params["the_dob"]
    @bio = params["the_bio"]
    @image_url = params["the_source"]

    i = Actor.new
    i.name = @name
    i.dob = @dob
    i.bio = @bio
    i.image_url = @image_url

    i.save
    redirect_to "/actors"
  end

  def add_director


  end

  def create_new_director
    @name = params["the_name"]
    @dob = params["the_dob"]
    @bio = params["the_bio"]
    @image_url = params["the_source"]

    i = Director.new
    i.name = @name
    i.dob = @dob
    i.bio = @bio
    i.image_url = @image_url

    i.save
    redirect_to "/directors"
  end


  def movies
    @list_of_movies = Movie.all
  end

  def movies_edit
    @list_of_movies = Movie.all
    @movie_id = params["id"]
    @movie_title = @list_of_movies.find(@movie_id).title
    @movie_year = @list_of_movies.find(@movie_id).year
    @movie_duration = @list_of_movies.find(@movie_id).duration
    @movie_description = @list_of_movies.find(@movie_id).description
    @movie_image_url = @list_of_movies.find(@movie_id).image_url
  end

  def update_movies
    @list_of_movies = Movie.all
    @movie_id = params["id"]
    @updated_title = params["the_title"]
    @updated_year = params["the_year"]
    @updated_duration = params["the_duration"]
    @updated_description = params["the_description"]
    @updated_image_url = params["the_source"]

    i = @list_of_movies.find(@movie_id)
    i.title = @updated_title
    i.year = @updated_year
    i.duration = @updated_duration
    i.description = @updated_description
    i.image_url = @updated_image_url

    i.save
    redirect_to("/movies")
  end

  def directors
    @list_of_directors = Director.all
  end

  def actors
    @list_of_actors = Actor.all
  end

  def update_directors
    @list_of_directors = Director.all
    @director_id = params["id"]
    @updated_name = params["the_name"]
    @updated_dob = params["the_dob"]
    @updated_image_url = params["the_source"]

    i =@list_of_directors.find(@director_id)
    i.name = @updated_name
    i.dob = @updated_dob
    i.image_url = @updated_image_url

    i.save
    redirect_to("http://localhost:3000/directors")
  end

  def update_actors
    @list_of_actors = Actor.all
    @actor_id = params["id"]
    @updated_name = params["the_name"]
    @updated_dob = params["the_dob"]
    @updated_image_url = params["the_source"]

    i =@list_of_actors.find(@actor_id)
    i.name = @updated_name
    i.dob = @updated_dob
    i.image_url = @updated_image_url

    i.save
    redirect_to("http://localhost:3000/actors")
  end



  def directors_edit
    @list_of_directors = Director.all
    @director_id = params["id"]
    @director_name = @list_of_directors.find(@director_id).name
    @director_bio = @list_of_directors.find(@director_id).bio
    @director_dob = @list_of_directors.find(@director_id).dob
    @director_image_url = @list_of_directors.find(@director_id).image_url
  end

  def actors_edit
    @list_of_actors = Actor.all
    @actor_id = params["id"]
    @actor_name = @list_of_actors.find(@actor_id).name
    @actor_bio = @list_of_actors.find(@actor_id).bio
    @actor_dob = @list_of_actors.find(@actor_id).dob
    @actor_image_url = @list_of_actors.find(@actor_id).image_url
  end

end
