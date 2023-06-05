class CreateClothes < ActiveRecord::Migration[7.0]
  def change
    create_table :clothes do |t|
      t.string :category
      t.float :price
      t.string :size
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
