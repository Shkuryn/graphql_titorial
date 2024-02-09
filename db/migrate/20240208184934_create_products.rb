class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :color
      t.text :description
      t.integer :price
      t.string :vendor
      t.integer :vat_rate

      t.timestamps
    end
  end
end
