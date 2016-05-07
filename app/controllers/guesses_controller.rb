class GuessesController <ApplicationController
  def index

    g=Guess.new
    g.first = params[:first_number]
    g.second = params[:second_number]
    g.third = params[:third_number]
    g.save


    Guess.all.each do |guess|
      @result = "No."
      @result = "Yes!"
    end

    render("index.html.erb")
  end
end
