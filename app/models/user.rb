class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    USERNAME_REGEX = /[a-zA-Z](([\._\-][a-zA-Z0-9])|[a-zA-Z0-9])*[a-z0-9]/
    NAME_REGEX = /[a-zA-Z]/
	
	validates :username, 
	presence: true,
	length: { minimum: 5, maximum: 25},
	uniqueness: true,
	format: USERNAME_REGEX


	validates :first_name, presence: true,format: NAME_REGEX
	validates :last_name, presence: true,format: NAME_REGEX
	validates :type, presence: true
end
