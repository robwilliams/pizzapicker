class AddPriceToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :price, :integer, default: 0
  end
end
