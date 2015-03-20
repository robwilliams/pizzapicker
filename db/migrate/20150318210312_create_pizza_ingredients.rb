class CreatePizzaIngredients < ActiveRecord::Migration
  def change
    create_table :pizza_ingredients do |t|
      t.references :pizza, index: true
      t.references :ingredient, index: true

      t.timestamps null: false
    end
    add_foreign_key :pizza_ingredients, :pizzas
    add_foreign_key :pizza_ingredients, :ingredients
  end
end
