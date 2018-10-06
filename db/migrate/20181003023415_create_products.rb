class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :sdescription
      t.string :image
      t.decimal :price, precision: 18, scale: 4
      t.decimal :offerprice, precision: 18, scale: 4

      t.timestamps
    end
  end
end
