class CreateDispensaries < ActiveRecord::Migration[5.1]
  def change
    create_table :dispensaries do |t|
      t.string :name
      t.string :full_address
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
