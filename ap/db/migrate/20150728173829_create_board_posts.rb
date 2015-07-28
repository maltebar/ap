class CreateBoardPosts < ActiveRecord::Migration
  def change
    create_table :board_posts do |t|
    	t.text :content
    	t.integer :upvotes

      t.timestamps null: false
    end
  end
end
