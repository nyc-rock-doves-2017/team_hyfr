class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, NULL: false,
      t.text :body, NULL: false,
      t.references :commentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
