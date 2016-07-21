require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do

    erb(:index)
  end

  post '/post-names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do

    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_HP = 100
    erb(:play)
  end

  get '/attack' do

    @player_2_name = $player_2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0


end
