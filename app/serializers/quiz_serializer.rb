class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :description, :mark, :status
end
