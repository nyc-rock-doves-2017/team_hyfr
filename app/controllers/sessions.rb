get '/' do
  erb :'/index'
end

get '/users' do
  erb :'/users/sessions', layout: false
end

get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  User.create(params[:user])
  redirect '/'
end

post '/sessions' do
  if User.authenticate(params[:user])
    session[:user_id] = User.find_by(email: params[:user][:email]).id
    redirect '/'
  else
    "Login Failed"
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
