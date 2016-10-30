require 'pry'

get '/decks' do
  @decks = Deck.all
  erb :'/decks/index'
end

get '/decks/:id' do
  @deck = Deck.find(params[:id])
  @cards = @deck.remaining_cards
  @card = @cards.sample
  erb :'cards/show'
end


post '/guess/new' do
  @deck = Deck.find(params[:deck])
  @card = Card.find(params[:card])
  @deck.remove(@card) if @deck.check(params[:guess], @card.question)
  @deck.remaining_cards

  redirect "/decks/#{@deck.id}" unless @deck.remaining_cards.length == 0
  erb '/rounds/show'
end


get 'round/show' do
  @deck
  @correct_guesses
  @total_cards
  @total_guesses
  erb :'rounds/show'
end
