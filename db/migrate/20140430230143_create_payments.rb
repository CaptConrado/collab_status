class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.references :payable, polymorphic: true
      t.timestamps
    end
  end
end
