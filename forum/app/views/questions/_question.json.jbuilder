json.extract! question, :id, :email, :body, :created_at, :updated_at
json.url question_url(question, format: :json)
