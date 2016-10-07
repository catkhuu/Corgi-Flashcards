User.create!(username: "janedoe", email: "jane@example.com", password: "test")
Deck.create!(name: "Corgis of instagram", creator_id: 1)
Deck.create!(name: "Famous corgi owners", creator_id: 1)
Deck.create!(name: "Corgi quirks", creator_id: 1)

Card.create!(question: 'Which Monarch owns 16 corgis?', answer: 'Queen Elizabeth II', deck_id: 2)
Card.create!(question: 'Which FoodNetwork Star owns a Cardigan corgi?', answer: 'Alton Brown', deck_id: 2)
Card.create!(question: 'Which Golden Girl is a corgi lover?', answer: 'Betty White', deck_id: 2)
Card.create!(question: 'Which corgi has the largest following in Canada?', answer: 'corgistagram', deck_id: 1)
Card.create!(question: 'Which famous corgi who has a pet hamster ("Ham") recently passed away?', answer: 'Loki', deck_id: 1)
Card.create!(question: 'Which famous corgi hails from the Bayside and is a frequent "low-rider"?', answer: 'Roti', deck_id: 2)
Card.create!(question: "Name a saying for the corgi's short stature?", answer: 'Life is short, but so are my legs!', deck_id: 3)
Card.create!(question: "A corgi's butt most resembles which baked good?", answer: 'Brioche', deck_id: 3)
Card.create!(question: 'True or false, the corgi is known for its agility?', answer: 'True', deck_id: 3)
Card.create!(question: 'Who in the Wolves cohort is a corgi owner?', answer: 'Neel Gupta', deck_id: 3)

Round.create!(user_id: 1, deck_id: 1)

Guess.create!(card_id: 1, round_id: 1)
Guess.create!(card_id: 1, round_id: 1)
Guess.create!(card_id: 2, round_id: 1)
Guess.create!(card_id: 3, round_id: 1)
Guess.create!(card_id: 3, round_id: 1)
