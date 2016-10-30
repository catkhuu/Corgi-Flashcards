get '/' do
  erb :index
end

get '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = Deck.find(@round.deck_id)
  @total_cards = @round.played_cards.count
  @correct_guesses = @round.correct_guesses
  @total_guesses = @round.guesses
  erb :'/rounds/show'
end
