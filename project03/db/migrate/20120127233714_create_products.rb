class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
