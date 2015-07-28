json.array!(@code_cases) do |code_case|
  json.extract! code_case, :id
  json.url code_case_url(code_case, format: :json)
end
