get '/resources' do
  @resources = Resource.all
  erb :'/resources/index'
end

get '/resources/new' do
  erb :'resources/new'
end

post '/resources' do
    create_resource
end

get '/resources/:id' do
  @resource = Resource.find_by(id: params[:id])
  erb :'resources/show'
end

get '/resources/:id/edit' do
  @resource = Resource.find_by(id: params[:id])
  erb :'resources/edit'
end

def update_resource
  find_user
  @resource = Resource.find_by(id: params[:id])

   if @resource.user_id = @user.id
      @resource.update(params[:resource])
      @resource.save!
    end
  redirect "/resources/#{@resource.id}"
end

patch '/resources/:id' do
  update_resource
end
put '/resources/:id' do
  update_resource
end
post '/resources/:id' do
  update_resource
end
