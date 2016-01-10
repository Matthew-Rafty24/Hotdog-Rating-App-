class CreateHotdogs < ActiveRecord::Migration
  def change
    create_table :hotdogs do |t|
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
