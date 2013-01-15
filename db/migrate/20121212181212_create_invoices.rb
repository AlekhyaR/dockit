class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :customer_id
      t.integer :product_id
      t.integer :status_id
      t.integer :tax
      t.integer :grand_total
      t.integer :discount
      t.datetime :date
      
      t.timestamps
    end
  end
end
