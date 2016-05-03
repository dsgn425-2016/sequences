class GuessesController < ApplicationController
  # params: {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}

  def create_row
    g= Guess.new
    g.first = params[:first_number]
    g.second =params[:second_number]
    g.third =params[:third_number]
    g.save
    redirect_to("http://localhost:3000/all_guesses")
  end

  def index

    @list_of_guesses = Guess.all
    render "all_guesses.html.erb"
  end

end
