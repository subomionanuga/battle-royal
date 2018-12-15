require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/game"

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    "Enter player names"
    erb(:index)
  end

  post "/names" do
    $Player_1 = Player.new(params[:Player_1])
    $Player_2 = Player.new(params[:Player_2])
    redirect '/play'
  end

  get "/play" do
    $Player_1
    $Player_2
    erb(:play)
  end

  get "/arena" do
    $Player_1
    $Player_2
    erb(:arena)
  end

  get "/fight" do
    $Player_1
    Game.new.attack($Player_2)
    # $Player_2.reduce_hp
    erb(:fight)
  end


  run! if app_file == $0

end
