User.delete_all
Question.delete_all
Answer.delete_all
Comment.delete_all
Vote.delete_all

5.times do User.create(name: Faker::Name.name, email: Faker::Internet.safe_email, password: "password")
end

5.times do Question.create(user_id: rand(1..5), title: Faker::Lorem.word, body: Faker::Lorem.sentence)
end

50.times do Answer.create(question_id: rand(1..5), body: Faker::Lorem.sentence, responder_id: rand(1..5))
end

Answer.all.each do |answer|
  5.times do
    answer.comments.create(user_id: rand(1..5), body: Faker::Lorem.sentence)
  end
  rand(1..10).times do
    answer.votes.create(user_id: rand(1..5), value: 1)
  end
  rand(1..10).times do
    answer.votes.create(user_id: rand(1..5), value: -1)
  end
end

Question.all.each do |question|
  5.times do
    question.comments.create(user_id: rand(1..5), body: Faker::Lorem.sentence)
  end
  rand(1..10).times do
    question.votes.create(user_id: rand(1..5), value: 1)
  end
  rand(1..10).times do
    question.votes.create(user_id: rand(1..5), value: -1)
  end
end
