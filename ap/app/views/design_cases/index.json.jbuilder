json.array!(@design_cases) do |design_case|
  json.extract! design_case, :id
  json.url design_case_url(design_case, format: :json)
end
