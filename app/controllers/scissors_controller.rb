class ScissorsController < ApplicationController
  def play_scissors
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied" 
    end

    render({:template => "rps_templates/scissors"})
  end
end
