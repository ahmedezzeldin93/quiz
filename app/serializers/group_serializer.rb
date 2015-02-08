class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name, :description, :number_of_students
end
