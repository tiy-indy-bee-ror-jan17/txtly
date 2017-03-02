class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.references :user, foreign_key: true
      t.text :caption

      t.timestamps
    end
  end
end
