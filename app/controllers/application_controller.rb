class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
def homepage
  render({ :template => "game_templates/rules.html.erb"})
end

  def play_rock
# redirect_to("https://www.wikipedia.org")
   index = rand(3)  

   moves = ["rock", "paper", "scissors"]

  @comp_move = moves.at(index) 

  if @comp_move == "rock" 
    @outcome = "We tied!" 
  elsif @comp_move  == "paper" 
    @outcome = "We lost!" 
  elsif @comp_move == "scissors" 
    @outcome = "We won!"  
 end

    render({:template => "game_templates/user_rock.html.erb"})
  end


    def play_paper
      index = rand(3)

      moves = ["rock", "paper", "scissors"]

        @comp_move = moves.at(index)

      if @comp_move == "rock"
        @outcome = "We won!"
      elsif @comp_move == "paper"
        @outcome = "We tied!"
      elsif @comp_move == "scissors"
        @outcome = "We lost!"
      end
    render({:template => "game_templates/user_paper.html.erb"})

  end

    def play_scissors
      index = rand(3)

      moves = ["rock", "paper", "scissors"]

      @comp_move = moves.at(index)

      if @comp_move == "rock"
        @outcome = "We lost!"
      elsif @comp_move == "paper"
        @outcome = "We won!"
      elsif @comp_move == "scissors"
        @outcome = "We tied!"
      end
      render({:template => "game_templates/user_scissors.html.erb"})
    end
end
