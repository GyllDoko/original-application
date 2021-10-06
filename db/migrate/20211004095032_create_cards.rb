class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :number
      t.integer :cvv
      t.date :deadline
      t.string :owner_first_name
      t.string :owner_last_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
