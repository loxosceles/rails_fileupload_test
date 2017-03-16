class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.text :image_data
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
