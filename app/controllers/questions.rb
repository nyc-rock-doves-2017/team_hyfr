get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  @question = Question.create(user_id: session[:user_id], title: params[:question][:title], body: params[:question][:body])
  redirect "/questions/#{@question.id}"
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  erb :"questions/show"
end

delete '/questions/:id' do
  # erb questions/_delete
end
