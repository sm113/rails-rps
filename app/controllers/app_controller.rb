class AppController < ApplicationController
  def homepage
    render({:template => "game_templates/rules"})
  end

  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template => "game_templates/rock"})
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({:template => "game_templates/paper"})
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({:template => "game_templates/scissors"})
  end
end
