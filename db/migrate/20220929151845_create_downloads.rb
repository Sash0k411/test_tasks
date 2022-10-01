class CreateDownloads < ActiveRecord::Migration[7.0]
  def change
    create_table :downloads do |t|
      t.references :song, index: true
      t.timestamps
    end
  end
end
