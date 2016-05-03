class GuessesController < ApplicationController
  def create_row
    #params = {"first_number"=>"1", "second_number"=>"5","third_number"=>"10"}
    g = Guess.new
    g.first = params[:first_number]
    g.second = params[:second_number]
    g.third =  params[:third_number]
    g.save

    redirect_to("http://localhost:3000/all_guesses")
  end

 def destroy
   Guess.destroyAll
   redirect_to("http://localhost:3000/all_guesses")
 end

  def index
    # @first_num = params["first_number"]
    # @second_num = params["second_number"]
    # @third_num = params["third_number"]

    @list_of_guesses = Guess.all
    render("index.html.erb")
  end

end
