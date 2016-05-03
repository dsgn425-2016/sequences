class GuessesController < ApplicationController
  def create_row

    # params = {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}
    g = Guess.new
    g.first = params[:first_number]
    g.second = params[:second_number]
    g.third = params[:third_number]
    g.save
    redirect_to("http://localhost:3000/all_guesses")
  end

  def index
    # params = {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}
    @list_of_guesses = Guess.all
    render("index.html.erb")
  end
end
