class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @age = params[:age]
    if params[:age]
      @comedians = Comedian.where("age = #{params[:age]}")
    else
      @comedians = Comedian.all
    end

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
