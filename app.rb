require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Application
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    
    # session[:name_one] = params[:name_one]
    # session[:name_two] = params[:name_two]
    $player_name_1 = Player.new(params[:name_one])
    $player_name_2 = Player.new(params[:name_two])
    redirect '/play'
 
  end

  get '/play' do
    
    @player_1 = $player_name_1.name
    @player_2 = $player_name_2.name
    erb(:play)

  end

  get '/attack' do
 
    @player_1 = $player_name_1.name
    @player_2 = $player_name_2.name
    erb(:attack)

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
