class AddTempImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image_tmp, :string
  end
end
