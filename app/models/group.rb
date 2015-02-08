class Group < ActiveRecord::Base
	#Relationships
	belongs_to :instructor, class_name: 'User', foreign_key: 'instructor_id'
	has_many :quizzes
end
