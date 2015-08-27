
get '/users' do
  @users = User.all
  @user = current_user
  erb :"users"
end 

get '/users/new' do
  erb :"sign_up"
end

get '/users/login' do
  erb :"login"
end

post '/users' do
   user = User.new(params)
  if user.save
    login(user)
    redirect "/users"
  else
    redirect '/users/new'
  end
 end

post '/users/login' do
  user = User.find_by(user_name: params[:user_name])
  if user && user.password == params[:password]
    login(user)
    redirect "/users"
  else
    redirect '/users/login'
  end
end



