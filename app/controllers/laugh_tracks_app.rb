class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedian.sort(params)
    @all_specials = Special.tot_specials(params[:age])
    @ave_special_length = Special.average_length(params[:age])
    @all_cities = Comedian.cities(params[:age])
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :show
  end
end
