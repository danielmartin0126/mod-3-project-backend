class CreateLyrics < ActiveRecord::Migration[5.2]
  def change
    create_table :lyrics do |t|
      t.string :song_title
      t.string :content
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end
