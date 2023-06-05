class AddColumnsToClothes < ActiveRecord::Migration[7.0]
  def change
    add_column :clothes, :name, :string
    add_column :clothes, :gender, :string
  end
end
