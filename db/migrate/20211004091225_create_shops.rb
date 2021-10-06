class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :logo
      t.string :adress
      t.integer :contact
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
