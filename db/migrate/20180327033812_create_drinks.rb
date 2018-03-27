class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :milk
      t.string :water
      t.string :froth
      t.text :picture
      t.text :description

      t.timestamps
    end
  end
end
