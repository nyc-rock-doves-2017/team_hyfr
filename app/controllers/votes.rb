

post '/posts/:id/vote' do

# One vote per user per Questions and Answer and Comment
# all_ans = Answer.all
# all_ans.each do |ans|
#   individual_votes = ans.votes.select do |vote|
#     vote.user_id == sessions[:user_id]
#   end
#   if individual_votes.empty?
#     ALLOW BUTTON CLICKY
#   else
#     DONT ALLOW BUTTON CLICKY
#   end
# end
  post = Question.find(params[:id])
  logger = current_user
  post.votes.create(user_id: logger.id, value: 1)
  redirect back

end

post '/posts/:id/downvote' do

  post = Question.find(params[:id])
  logger = current_user
  post.votes.create(user_id: logger.id, value: -1)
  redirect back

end

post '/posts/:id/vote/answer' do

  post = Answer.find(params[:id])
  logger = current_user
  post.votes.create(user_id: logger.id, value: 1)
  redirect back

end

post '/posts/:id/downvote/answer' do

  post = Answer.find(params[:id])
  logger = current_user
  post.votes.create(user_id: logger.id, value: -1)
  redirect back

end

post '/posts/:id/vote/comment' do

  post = Comment.find(params[:id])
  logger = current_user
  post.votes.create(user_id: logger.id, value: 1)
  redirect back

end

post '/posts/:id/downvote/comment' do

  post = Comment.find(params[:id])
  logger = current_user
  post.votes.create(user_id: logger.id, value: -1)
  redirect back

end
