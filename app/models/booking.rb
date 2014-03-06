class Booking < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :station, presence: true,
			length: { minimum: 4 }


end
