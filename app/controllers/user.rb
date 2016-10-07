get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/decks'
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/login' do
  erb :'sessions/new'
end

post '/users/login' do
  user = User.find_by_email(params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
  redirect '/decks'
  else
    redirect '/users/login'
    @errors = user.errors.full_messages
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/logout' do
  session.clear
  redirect '/'
end
