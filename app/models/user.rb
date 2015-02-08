class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	#Validations 
	validates :username, presence: true
	validates :type, presence: true
	validates :auth_token, uniqueness: true
end

class Student< User
	#Relationships
	has_many    :memberships ,foreign_key: 'student_id'
	has_and_belongs_to_many :answers, join_table: :students_answers, foreign_key: :student_id

	#Methodes
	def self.model_name
		User.model_name
	end

end


class Instructor< User
	#Relationships
	has_many    :groups
    has_many    :quizzs

    #Methodes
    def self.model_name
		User.model_name
	end
end