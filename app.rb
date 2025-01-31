require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)
end

get("/:rps_choice") do
  @rps_choice = params.fetch("rps_choice").to_s

  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  
  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  else 
    @outcome = "won"
  end

  erb (:flexible)
end
