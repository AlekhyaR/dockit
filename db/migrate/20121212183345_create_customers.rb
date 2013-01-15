class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :address_id
      
      t.timestamps
    end
  end
end
