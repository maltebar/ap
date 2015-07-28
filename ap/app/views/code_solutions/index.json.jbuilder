json.array!(@code_solutions) do |code_solution|
  json.extract! code_solution, :id
  json.url code_solution_url(code_solution, format: :json)
end
