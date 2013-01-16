class RmUnwnatedCols < ActiveRecord::Migration
  def change
    remove_column :clients, :address_id
    remove_column :invoices, :product_id
    remove_column :invoices, :customer_id
    remove_column :invoices, :address_id
    remove_column :customers, :address_id
  end
end
