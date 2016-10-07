get '/' do
  erb :index
end

get '/decks' do
  @decks = Deck.all
  erb :'/decks/index'
end
