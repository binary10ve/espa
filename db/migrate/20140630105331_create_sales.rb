class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.decimal :amount
      t.datetime :paid_at
      t.integer :service_id
      t.integer :staff_id

      t.timestamps
    end
  end
end
