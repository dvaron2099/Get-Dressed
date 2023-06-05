class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.date :pickup_date
      t.date :return_date
      t.boolean :status
      t.references :clothe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
