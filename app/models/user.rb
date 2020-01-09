class User < ApplicationRecord
	has_secure_password

	has_many :accounts, dependent: :destroy
	has_many :transactions, dependent: :destroy

	validates_presence_of :name, :password
	validates_uniqueness_of :name
end
