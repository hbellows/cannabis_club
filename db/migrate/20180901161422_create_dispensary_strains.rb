class CreateDispensaryStrains < ActiveRecord::Migration[5.1]
  def change
    create_table :dispensary_strains do |t|
      t.references :dispensary, foreign_key: true
      t.references :strain, foreign_key: true

      t.timestamps
    end
  end
end
