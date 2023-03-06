class AddShoeToEmarsk < ActiveRecord::Migration
  def change
        add_column :e_markets, :shoe, :string
  end
end
