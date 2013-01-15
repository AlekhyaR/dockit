class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :invoice
      t.string :item
      t.text :description
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
