get '/' do
  erb :index
end

get '/index' do
  erb :index
end

# register
get '/register' do
  erb :register
end

post '/register' do
  user = User.create(params[:user_info])
  puts user
  if user.valid?
    redirect '/account/show'
  else
    status 422
    @errors = user.errors.full_messages
    erb :'register'
  end
end

get '/account/show' do
  erb :'account/show'
end

post '/login' do
  @user = User.find_by(username: params[:user_info][:username])
    if @user && @user.password == params[:user_info][:password_digest]
      session[:user_id] = @user.id
      # "Logged in"
      erb :'account/show'
    else
      "Login Attempt Failed"
    end

end
