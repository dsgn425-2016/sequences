class GuessesController < ApplicationController
def create_row
  g = Guess.new
  g.first = params[:first_number]
  g.second = params[:second_number]
  g.third = params[:third_number]
  g.save

  redirect_to("http://localhost:3000/all_guesses")
end
def reset_table

  Guess.destroy_all
    redirect_to("http://localhost:3000/all_guesses")
end

  def index
    #   Parameters: {"first_number"=>"2", "second_number"=>"1", "third_number"=>"2"}

@list_of_guesses = Guess.all

    render("index.html.erb")
  end
end
