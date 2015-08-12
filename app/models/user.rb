class User < ActiveRecord::Base
	has_secure_password
	has_many :posts, dependent: :destroy

	validates :email, uniqueness: true
	validates :email, :password, presence: true
end
