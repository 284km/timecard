json.array!(@terms) do |term|
  json.extract! term, :id, :started_at, :ended_at
  json.url term_url(term, format: :json)
end
