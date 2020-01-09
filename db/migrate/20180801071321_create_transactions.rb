class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :description
      t.references :user, foreign_key: true
      t.references :account, foreign_key: true
      t.integer :credit
      t.integer :debit

      t.timestamps
    end
  end
end
