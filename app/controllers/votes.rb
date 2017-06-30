def upvote_valid(post)
    vote_array = post.votes.select do |vote|
    vote.user_id == session[:user_id]
  end

  if vote_array.empty?
    logger = current_user
      post.votes.create(user_id: logger.id, value: 1)
    redirect back
  else
    redirect back
  end
end

def downvote_valid(post)
    vote_array = post.votes.select do |vote|
    vote.user_id == session[:user_id]
  end

  if vote_array.empty?
    logger = current_user
      post.votes.create(user_id: logger.id, value: -1)
    redirect back
  else
    redirect back
  end
end

post '/posts/:id/vote' do
  post = Question.find(params[:id])
  upvote_valid(post)
end

post '/posts/:id/downvote' do
  post = Question.find(params[:id])
  downvote_valid(post)
end

post '/posts/:id/vote/answer' do
  post = Answer.find(params[:id])
  upvote_valid(post)
end

post '/posts/:id/downvote/answer' do
  post = Answer.find(params[:id])
  downvote_valid(post)
end

post '/posts/:id/vote/comment' do
  post = Comment.find(params[:id])
  upvote_valid(post)
end

post '/posts/:id/downvote/comment' do
  post = Comment.find(params[:id])
  downvote_valid(post)
end
