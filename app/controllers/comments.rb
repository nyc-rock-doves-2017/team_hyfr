post '/comments/:id' do
  @answer = Answer.find_by(id: params[:id])
  @comment = Comment.create(body: params[:body], user_id: session[:user_id], commentable: @answer)
  redirect "/questions/#{@answer.question_id}"
end
