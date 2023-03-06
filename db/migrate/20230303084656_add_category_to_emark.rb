class AddCategoryToEmark < ActiveRecord::Migration
  def change
    add_column :e_markets, :category, :string
  end
end
