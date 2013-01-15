class CreateInvoiceProducts < ActiveRecord::Migration
  def change
    create_table :invoice_products do |t|
      t.integer :invoice_id
      t.integer :product_id
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps
    end
  end
end
