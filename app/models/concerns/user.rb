class User < ApplicationRecord
	devise :database_authenticatable,
		   :recoverable, :rememberable
		   has_many :friends
end