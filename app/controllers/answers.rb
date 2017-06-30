get '/answers' do

end

post '/answers/:id' do
  @answer = Answer.create(responder_id: session[:user_id], body: params[:body], question_id: params[:id])
  redirect "/questions/#{params[:id]}"
end
