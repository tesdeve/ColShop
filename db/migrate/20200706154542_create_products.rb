class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      #t.string :image
      t.decimal :price, precision: 10, scale: 2
      t.string :available
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
