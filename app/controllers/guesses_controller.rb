class GuessesController < ApplicationController

  def create_row
    g = Guess.new
    g.first = params[:first_number]
    g.second = params[:second_number]
    g.third = params[:third_number]
    g.save

    redirect_to("http://localhost:3000/all_guesses")

    # @first_num = params[:first_number]
    # @second_num = params[:second_number]
    # @third_num = params[:third_number]
  end

  def index
    # Parameters: {"first_number"=>"3", "second_number"=>"6", "third_number"=>"7"}

    @list_of_guesses = Guess.all

   render("index.html.erb")
  end
  
end
