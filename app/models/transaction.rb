class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :account

	def debit=(amount)
		return if amount.to_f == 0

		write_attribute(:debit, amount.to_f * 100)
	end

	def debit
		amount = read_attribute(:debit)
		if amount
			Float(amount) / 100
		end
	end

	def credit=(amount)
		return if amount.to_f == 0

		write_attribute(:credit, amount.to_f * 100)
	end

	def credit
		amount = read_attribute(:credit)
		if amount
			 Float(amount) / 100
		end
	end

	def self.balance(query=nil)
		query = Transaction.all unless query

		Float(query.sum(:credit) - query.sum(:debit)) / 100
	end
end
