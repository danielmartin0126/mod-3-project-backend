class CreateUserLyrics < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lyrics do |t|
      t.integer :user_id
      t.integer :lyric_id
      t.boolean :correct

      t.timestamps
    end
  end
end
