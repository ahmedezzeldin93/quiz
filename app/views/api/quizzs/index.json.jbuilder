json.array!(@quizzs) do |quizz|
  json.extract! quizz, :id, :title, :subject, :description, :mark, :status
  json.url quizz_url(quizz, format: :json)
end
