json.array!(@code_case_attachments) do |code_case_attachment|
  json.extract! code_case_attachment, :id
  json.url code_case_attachment_url(code_case_attachment, format: :json)
end
