class Account < ApplicationRecord
	validates_uniqueness_of :number
	
  belongs_to :user
	has_many :transactions, dependent: :destroy
end
