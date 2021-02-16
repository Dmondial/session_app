class AddColumnToFavoriteSounds < ActiveRecord::Migration[6.0]
  def change
    add_index :favorite_sounds, [:user_id, :sound_id], unique: true
  end
end
