json.array!(@code_solution_attachments) do |code_solution_attachment|
  json.extract! code_solution_attachment, :id
  json.url code_solution_attachment_url(code_solution_attachment, format: :json)
end
