class AddApiIdToLyrics < ActiveRecord::Migration[5.2]
  def change
    add_column :lyrics, :api_id, :integer
  end
end
