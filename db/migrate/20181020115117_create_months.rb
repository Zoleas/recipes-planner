class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.string :name, null: false
      t.integer :number, null: false
      t.string :season, null: false
      t.timestamps
    end
  end
end
