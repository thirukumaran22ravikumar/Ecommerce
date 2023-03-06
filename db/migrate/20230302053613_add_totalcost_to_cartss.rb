class AddTotalcostToCartss < ActiveRecord::Migration
  def change
    add_column :carts, :total_cost, :integer ,default: 0, null: false
  end
end
