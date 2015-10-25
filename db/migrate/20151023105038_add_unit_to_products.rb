class AddUnitToProducts < ActiveRecord::Migration
  def change
    add_column :products, :unit_id, :integer
  end
end
