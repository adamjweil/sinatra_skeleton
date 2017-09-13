helpers do

  def create_user
    @user = User.new(params[:user])
    @user.password = params[:user][:password]

      if @user.save!
        session[:user_id] = @user.id
        redirect "/users/show"
      else
        status 422
        @errors = @user.errors.full_messages
        erb :'users/new'
      end
  end

  def login
    user = User.authenticate(params[:user][:email], params[:user][:password_digest])
      if user
        session[:user_id] = user.id
        redirect '/users/show'
     else
       status 422
        @errors = ["Login Attempt Failed."]
        redirect '/sessions/new'
      end
  end
  def logged_in?
    !!@current_user
  end
  def find_user
    if session[:user_id]
      @user ||= User.find_by(id: session[:user_id])
    end
  end
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
