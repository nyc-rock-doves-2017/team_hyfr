# get '/questions' do
#   # erb questions/index
# end

get '/questions/new' do
  # erb questions/new
end

post '/questions' do
  # erb questions/index
end

get '/questions/:id' do
  puts params
  @question = Question.find_by(id: params[:id])
  erb :"questions/show"
end

delete '/questions/:id' do
  # erb questions/_delete
end
