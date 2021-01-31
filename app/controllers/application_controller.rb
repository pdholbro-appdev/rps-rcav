class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end

  def play_rock 
    #write a ton of code

    # redirect_to("https://www.wikipedia.org")
    render({ :template => "game_templates/user_rock.html.erb" })
  end  

  def play_paper

    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock" 
      @outcome = "won"
    elsif @comp_move == "paper" 
      @outcome = "tied"
    else @comp_move == "scissors" 
      @outcome = "lost"
    end 
    
    render({ :template => "game_templates/user_paper.html.erb"})
  end

end
