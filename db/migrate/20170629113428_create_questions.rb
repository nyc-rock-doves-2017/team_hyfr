class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id, NULL: false,
      t.text :body, NULL: false,
    end
  end
end
