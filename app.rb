require "sinatra/base"

class Battle < Sinatra::Base

  get "/" do
    "Enter player names"
    erb(:index)
  end

  post "/names" do
    @Player_1 = params[:Player_1]
    @Player_2 = params[:Player_2]
    erb(:play)
  end

  run! if app_file == $0

end
