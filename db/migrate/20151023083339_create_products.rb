class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.boolean :import_duty
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
