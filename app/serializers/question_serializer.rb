class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :right_answer_id
end
