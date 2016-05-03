Rails.application.routes.draw do
  get("/all_guesses" => "guesses#index")
end
