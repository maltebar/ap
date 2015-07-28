json.array!(@design_solutions) do |design_solution|
  json.extract! design_solution, :id
  json.url design_solution_url(design_solution, format: :json)
end
