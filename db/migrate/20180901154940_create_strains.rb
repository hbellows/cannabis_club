class CreateStrains < ActiveRecord::Migration[5.1]
  def change
    create_table :strains do |t|
      t.string :strain
      t.string :cannabinoid_abbreviation
      t.string :cannabinoid
      t.string :terpene
      t.string :medical_use
      t.string :health_benefit
      t.string :category
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
