helpers do

  def create_resource
    find_user
    @resource = Resource.new(title: params[:resource][:title], description: params[:resource][:description], user_id: @user.id)
    @resource.save!
    redirect '/resources'
  end

end
