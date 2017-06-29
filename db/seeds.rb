User.delete_all
Question.delete_all
Answer.delete_all
Comment.delete_all
Vote.delete_all

5.times do User.create(name: Faker::Name.name, email: Faker::Internet.safe_email, password: "password")
end

5.times do Question.create(user_id: rand(1..5), title: Faker::Lorem.word, body: Faker::Lorem.sentence)
end

5.times do Answer.create(question_id: rand(1..5), body: Faker::Lorem.sentence, responder_id: rand(1..5))
end

5.times do Comment.create(user_id: rand(1..5), body: Faker::Lorem.sentence)
end

3.times do Vote.create(user_id: rand(1..5), value: 1)
end

2.times do Vote.create(user_id: rand(1..5), value: -1)
end
