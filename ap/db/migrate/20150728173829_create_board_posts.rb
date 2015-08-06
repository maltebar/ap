class CreateBoardPosts < ActiveRecord::Migration
  def change
    create_table :board_posts do |t|
    	t.string :title
    	t.text :content
    	t.integer :upvotes, default: 0
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
