class CreateProductAvailabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :product_availabilities do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
