helpers do
  def create_user
    @user = User.new(params[:user_info])
    @user.password = params[:user_info][:password]
    @user.save!
  end
  def login
    @user = User.find_by(email: params[:user_info][:email])
      if @user && @user.password == params[:user_info][:password]
        session[:id] = @user.id
        redirect '/account'
     else
       # make better
        redirect '/sessions/new'
      end
  end
  def logged_in?
    !!@user
  end
  def find_user
    if session[:id]
      @user ||= User.find(session[:id])
    end
  end
end
