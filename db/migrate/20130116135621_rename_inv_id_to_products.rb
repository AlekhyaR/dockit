class RenameInvIdToProducts < ActiveRecord::Migration
  def change
    remove_column :products, :invoice
    add_column :products, :invoice_id, :integer
  end
end
