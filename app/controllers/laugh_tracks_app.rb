class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedian.sort(params)
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
