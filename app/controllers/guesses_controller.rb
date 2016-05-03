class GuessesController < ApplicationController
  def create_row
    g = Guess.new
    g.first = params[:first_number]
    g.second = params[:second_number]
    g.third = params[:third_number]
    g.save

    redirect_to("http://localhost:3000/all_guesses")
  end

  def index
    # params = {"first_number"=>"1", "second_number"=>"5","third_number"=>"10"}

    @list_of_guesses = Guess.all

    @first_num = params[:first_number]
    @second_num = params[:second_number]
    @third_num = params[:third_number]

    render("index.html.erb")

  end
end
