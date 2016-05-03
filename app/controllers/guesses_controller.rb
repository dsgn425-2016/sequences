class GuessesController < ApplicationController
def create_row
#params = {"first_num=>"1",second_num=>"5",third_num=>"10" }

g=Guess.new
g.first=params[:first_number]
g.second=params[:second_number]
g.third=params[:third_number]
g.save

redirect_to("http://localhost:3000/all_guesses")  #you cannot do render here because the action in render is @list_of_guesses, and this variable is not yet defined right now. Its defined in the next method here

end

def index
  @list_of_guesses=Guess.all  # method.all retrieves the array with all numbers

    render("index.html.erb")
end
end
