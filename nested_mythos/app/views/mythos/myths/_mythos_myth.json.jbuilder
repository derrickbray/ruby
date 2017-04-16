json.extract! mythos_myth, :id, :title, :author, :year_started, :description, :body, :is_approved, :is_cannon, :up_vote, :created_at, :updated_at
json.url mythos_myth_url(mythos_myth, format: :json)
