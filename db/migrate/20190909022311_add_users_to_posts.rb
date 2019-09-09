class AddUsersToPosts < ActiveRecord::Migration[5.1]
  def change
    add_index :posts, [:user_id, :created_at]
    add_index :posts, :user_id
  end
end
