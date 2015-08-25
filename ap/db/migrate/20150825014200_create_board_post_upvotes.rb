class CreateBoardPostUpvotes < ActiveRecord::Migration
  def change
    create_table :board_post_upvotes do |t|
    	t.integer :user_id
    	t.integer :board_post_id

      t.timestamps null: false
    end
  end
end
