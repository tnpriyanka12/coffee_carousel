class RenameWaterToEspresso < ActiveRecord::Migration[5.1]
  def change
    rename_column :drinks, :water, :espresso
  end
end
