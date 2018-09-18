require 'sinatra/base'

class Battle < Sinatra::Application
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:name_one]
    @player_2 = params[:name_two]
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end


