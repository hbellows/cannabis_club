class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :full_address
      t.integer :med_card_number
      t.integer :plant_count
      t.string :user_name
      t.string :password_digest
      t.integer :role, default: 0
      t.references :dispensary, foreign_key: true

      t.timestamps
    end
  end
end
