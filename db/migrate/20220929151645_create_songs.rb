class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.references :artist, index: true
      t.string :title
      t.string :length
      t.string :filesize

      t.timestamps
    end
  end
end
