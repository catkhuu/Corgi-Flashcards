User.create!(username: "janedoe", email: "jane@example.com", password: "test")
Deck.create!(name: "Corgis of instagram", creator_id: 1)
Deck.create!(name: "Famous corgi owners", creator_id: 1)
Deck.create!(name: "Corgi quirks", creator_id: 1)



Card.create!(question: 'question', answer: 'answer', deck_id: 1)
Card.create!(question: 'question2', answer: 'answer2', deck_id: 1)
Card.create!(question: 'question3', answer: 'answer3', deck_id: 1)


Card.create!(question: 'question', answer: 'answer', deck_id: 2)
Card.create!(question: 'question2', answer: 'answer2', deck_id: 2)
Card.create!(question: 'question3', answer: 'answer3', deck_id: 2)

Card.create!(question: 'question', answer: 'answer', deck_id: 3)
Card.create!(question: 'question2', answer: 'answer2', deck_id: 3)
Card.create!(question: 'question3', answer: 'answer3', deck_id: 3)


Guesses.create!(card_id: 1, round_id: 1)
Guesses.create!(card_id: 1, round_id: 1)
Guesses.create!(card_id: 2, round_id: 1)
Guesses.create!(card_id: 3, round_id: 1)
Guesses.create!(card_id: 3, round_id: 1)

Round.create!(user_id: 1, deck_id: 1)
