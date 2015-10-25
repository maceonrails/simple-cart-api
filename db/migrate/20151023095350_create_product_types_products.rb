class CreateProductTypesProducts < ActiveRecord::Migration
  def change
    create_table :product_types_products, id: false do |t|
      t.integer :product_type_id, index: true
      t.integer :product_id, index: true
    end
  end
end
