class AddVideoIdToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :video_id, :string
  end
end
