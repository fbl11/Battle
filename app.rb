require 'sinatra/base'

class Battle < Sinatra::Application
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    
    session[:name_one] = params[:name_one]
    session[:name_two] = params[:name_two]
    redirect '/play'
    
  end

  get '/play' do
    
    @player_1 = session[:name_one]
    @player_2 = session[:name_two]
    erb(:play)

  end

  get '/attack' do
    @player_1 = session[:name_one]
    @player_2 = session[:name_two]
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end


