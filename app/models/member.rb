class Member < ApplicationRecord
	has_one :club_director
	has_one :club, through: :club_director

	belongs_to :unit

	has_and_belongs_to_many :member_honors

	validates :first_name, :last_name, :document_number, :birth_date, presence: true
	validates :document_number, uniqueness: true
end
