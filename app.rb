require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/score' do
    @player_1_name = "Pinar"
    @player_2_name = "Sasha"
    @score1 = 12
    @score2 = 16
    erb :score
  end

  post '/attack' do
    # @attacked = session[:player_2_name]
    redirect '/attacked'
  end

  get '/attacked' do
    @attacked = session[:player_2_name]
    erb :attacked
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end