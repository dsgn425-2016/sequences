class GuessesController < ApplicationController

  def create_row
        new_guess = Guess.new
        new_guess.first = params[:first_number]
        new_guess.second = params[:second_number]
        new_guess.third = params[:third_number]
        new_guess.save

        redirect_to("http://localhost:3000/all_guesses")
  end

  def index

    @list_of_guesses = Guess.all

    render 'index.html.erb'
  end

  def delete_db
    Guess.destroy_all
    redirect_to("http://localhost:3000/all_guesses")
  end

end
