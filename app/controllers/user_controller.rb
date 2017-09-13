# register
get '/users/new' do
  erb :'users/new'
end

post '/users' do
  create_user
end

get '/users/show' do
  @current_user
  erb :'users/show'
end

# login
get '/sessions/new' do
  erb :'sessions/new'
end
post '/sessions' do
  login
end

# logout
delete '/logout' do
  session.delete(:user_id)
  redirect '/'
end
get '/logout' do
  # session[:user_id] = nil
  session.delete(:user_id)
  redirect '/'
end
