get '/users/new' do
  erb :'/users/new'          #form to create new account
end

get '/decks' do
  'successful login'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/decks'         #creates new user and redirects to decks page
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/login' do
  erb :'users/login'      #gets user login form
end

post '/users/login' do
  redirect "/users/#{@user.id}"     #logs in user, creates session, and redirects to user page
end

get '/logout' do
  session.clear           # logs out user
  redirect '/'
end
