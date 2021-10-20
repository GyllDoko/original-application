class AddTempLogoToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :logo_tmp, :string
  end
end
