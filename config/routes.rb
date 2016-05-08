Rails.application.routes.draw do
  get("/all_guesses", { :controller => "guesses", :action => "index" })
end
