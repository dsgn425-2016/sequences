class GuessesController < ApplicationController
def index

g = Guess.new
g.first = params[:first_number]
g.second = params[:second_number]
g.third = params[:third_number]
g.save

@list_of_guesses = Guess.all

if g.first.to_i < g.second.to_i && g.second.to_i < g.third.to_i
  @outcome = "Yes!"
else
  @outcome = "No!"
end

  render ("index.html.erb")
end


end
