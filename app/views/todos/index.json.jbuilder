json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :status, :description
  json.url todo_url(todo, format: :json)
end
