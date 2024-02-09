class DeleteVatRateFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :vat_rate
  end
end
