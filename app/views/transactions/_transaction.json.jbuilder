json.extract! transaction, :id, :description, :user_id, :account_id, :credit, :debit, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
