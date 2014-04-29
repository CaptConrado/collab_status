class AddPaymentTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :payment_type, :integer
  end
end
