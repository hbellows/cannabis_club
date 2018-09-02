class ChangeTypeColumnOnStrains < ActiveRecord::Migration[5.1]
  def change
    rename_column :strains, :type, :strain_type
  end
end
