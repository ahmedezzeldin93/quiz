json.array!(@groups) do |group|
  json.extract! group, :id, :group_name, :description, :number_of_students
  json.url group_url(group, format: :json)
end
