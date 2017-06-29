class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id, NULL: false,
      t.text :body, NULL: false,
      t.integer :responder_id, NULL: false
    end
  end
end
