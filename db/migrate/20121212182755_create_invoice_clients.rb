class CreateInvoiceClients < ActiveRecord::Migration
  def change
    create_table :invoice_clients do |t|
      t.integer :invoice_id
      t.integer :client_id
      
      t.timestamps
    end
  end
end
