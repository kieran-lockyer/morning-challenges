json.extract! answer, :id, :email, :body, :created_at, :updated_at
json.url answer_url(answer, format: :json)
