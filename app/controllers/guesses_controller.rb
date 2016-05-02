class GuessesController < ApplicationController

  def index
    #Parameters: {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"} - rails is doing this

    g = Guess.new
    g.first = params[:first_number]
    g.second = params[:second_number]
    g.third = params[:third_number]
    g.save

    @list_of_guesses = Guess.all

    render("guesses.html.erb")
  end

end
