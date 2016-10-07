get '/users/new' do
  erb :'/users/new'          #form to create new account
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
  erb :'sessions/new'      #gets user login form
end

post '/users/login' do
  user = User.find_by_email(params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
  redirect "/users/#{user.id}"     #logs in user, creates session, and redirects to user page
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/logout' do
  session.clear           # logs out user
  redirect '/'
end
