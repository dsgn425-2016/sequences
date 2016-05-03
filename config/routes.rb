Rails.application.routes.draw do

  get("/all_guesses", { :controller => "guesses", :action => "index" })

  get("/create_guess", { :controller => "guesses", :action => "create_row" })

  get("/reset_db", { :controller => "guesses", :action => "delete_db" })
end
