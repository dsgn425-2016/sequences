class GuessesController < ApplicationController

  def index
    #params = {"first_number" => "1", "second_number" => "3", "third_number" => "2" }

    g = Guess.new
    g_first = params[:first_number]
    g_second = params[:second_number]
    g_third = params[:third_number]
    g.save

    @list_of_guesses = Guess.all?

  #  @user_first = params[:first_number]
  #  @user_second = params[:second_number]
  #  @user_third = params[:third_number]


    if @user_third > @user_second && @user_second > @user_first
      @answer = "Yes!"
    else
      @answer = "No."
    end

    render("index.html.erb")
  end
end
