class AddImageToCartses < ActiveRecord::Migration
  def change
    add_column :carts, :image, :string
  end
end
