class Customer < ApplicationRecord
	has_one :friend
	has_one :email, through: :friend
end
