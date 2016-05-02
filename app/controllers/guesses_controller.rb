class GuessesController < ApplicationController

  def index
    #Parameters: {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"} - rails is doing this

    @user_first = params[:first_number]
    @user_second = params[:second_number]
    @user_third = params[:third_number]

    render("guesses.html.erb")
  end

end
