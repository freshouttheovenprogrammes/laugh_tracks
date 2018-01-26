class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :"/index"
  end

  get '/comedians/[:age]' do
    @comedians = Comedian.all
    @comedian = Comedian.find_by(params[:age])
  end

end
