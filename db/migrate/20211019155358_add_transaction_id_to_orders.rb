class AddTransactionIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :transaction_id, :integer
  end
end
