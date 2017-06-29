get '/users' do
  #erb sessions
end

get '/users/new' do
  # erb new
end

post '/users' do
  # Users.create(params[user])
  redirect '/users'
end
