json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :title, :subject, :description, :mark, :status
  json.url quiz_url(quiz, format: :json)
end
