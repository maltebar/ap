json.array!(@board_post_upvotes) do |board_post_upvote|
  json.extract! board_post_upvote, :id
  json.url board_post_upvote_url(board_post_upvote, format: :json)
end
