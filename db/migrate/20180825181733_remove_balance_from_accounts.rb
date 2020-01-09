class RemoveBalanceFromAccounts < ActiveRecord::Migration[5.1]
  def change
    remove_column :accounts, :balance, :integer
  end
end
