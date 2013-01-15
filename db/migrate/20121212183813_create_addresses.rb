class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :customer_id
      t.integer :client_id
      t.text :line_1
      t.text :line_2
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :primary_email
      t.string :secondary_email
      t.integer :mobile_number
      t.integer :alternate_number 

      t.timestamps
    end
  end
end
