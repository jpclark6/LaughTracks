class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedian.sort(params)
    @age = params[:age]
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    if params[:comedian]
      Comedian.create(params[:comedian])
      redirect '/comedians'
    else
      redirect "/comedians?age=#{params[:age]}"
    end
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :show
  end
end
