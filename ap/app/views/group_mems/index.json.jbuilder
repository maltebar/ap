json.array!(@group_mems) do |group_mem|
  json.extract! group_mem, :id
  json.url group_mem_url(group_mem, format: :json)
end
