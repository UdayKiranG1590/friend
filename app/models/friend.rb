class Friend < ApplicationRecord
	validates :last_name, presence: true ,length:{minimum:1}
	validates :phone, length: { is: 10 }
	validates :email, uniqueness: true
end

