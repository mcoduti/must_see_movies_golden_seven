Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })
  get("/directors", { :controller => "movies", :action => "directors" })
  get("/actors", { :controller => "movies", :action => "actors" })
  get("/movies", { :controller => "movies", :action => "movies" })

  get("/directors/:id/edit", { :controller => "movies", :action => "directors_edit" })
    get("/directors/:id/delete", { :controller => "movies", :action => "directors_delete" })
  get("/update_director/:id", { :controller => "movies", :action => "update_directors" })

  get("/actors/:id/edit", { :controller => "movies", :action => "actors_edit" })
  get("/actors/:id/delete", { :controller => "movies", :action => "actors_delete" })
  get("/update_actor/:id", { :controller => "movies", :action => "update_actors" })

  get("/movies/:id/edit", { :controller => "movies", :action => "movies_edit" })
    get("/movies/:id/delete", { :controller => "movies", :action => "movies_delete" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_movies" })

  get("/movies/add", { :controller => "movies", :action => "add_movie" })
  get("/create_new_movie", { :controller => "movies", :action => "create_new_movie" })

  get("/actors/add", { :controller => "movies", :action => "add_actor" })
  get("/create_new_actor", { :controller => "movies", :action => "create_new_actor" })

  get("/directors/add", { :controller => "movies", :action => "add_director" })
  get("/create_new_director", { :controller => "movies", :action => "create_new_director" })


end
