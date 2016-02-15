json.array!(@groups) do |group|
  json.extract! group, :id, :nom, :salle, :tache
  json.url group_url(group, format: :json)
end
