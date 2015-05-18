class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :genre

      t.timestamps null: false
    end
  end
end
