class Friend < ApplicationRecord
	has_many :partner
	validates :last_name, presence: true ,length:{minimum:1}
	validates :phone, length: { is: 10 }
	validates :frist_name, :twitter, presence: true
	validates :email, confirmation: {case_sensitive: false }
	validates :frist_name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates :user_id, numericality: { greater_than: 0 }
    scope :out_of_print, -> { where(out_of_print: true) }
    enum status: [:last_name, :phone]
end

