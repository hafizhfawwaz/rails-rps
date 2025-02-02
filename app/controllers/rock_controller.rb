class RockController < ApplicationController
  def play_rock
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "won" 
    end

    render({:template => "rps_templates/rock"})
  end
end
