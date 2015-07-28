json.array!(@board_posts) do |board_post|
  json.extract! board_post, :id
  json.url board_post_url(board_post, format: :json)
end
