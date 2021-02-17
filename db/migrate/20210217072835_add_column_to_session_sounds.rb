class AddColumnToSessionSounds < ActiveRecord::Migration[6.0]
  def change
    add_index :session_sounds, [:session_id, :sound_id], unique: true
  end
end
