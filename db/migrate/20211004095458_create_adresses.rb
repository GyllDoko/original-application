class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.decimal :longitude
      t.decimal :latitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
