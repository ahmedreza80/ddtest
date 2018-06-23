class CreateChairs < ActiveRecord::Migration[5.1]
  def change
    create_table :chairs do |t|
      t.string :title
      t.text :description
      t.text :sdescription
      t.string :image
      t.string :previewo
      t.string :previewt
      t.string :previewth
      t.integer :price
      t.integer :offerprice
      t.string :coupon
      t.string :brand
      t.string :color
      t.string :warrenty
      t.string :material
      t.string :saving
      t.string :off

      t.timestamps
    end
  end
end
