Rails.application.routes.draw do
  get("/all_guesses", { :controller => "guesses", :action => "index"})
  get("/create_guesses", { :controller => "guesses", :action => "create_row"})
end
