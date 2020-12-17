class CreateSessionSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :session_sounds do |t|
      t.references :session , null: false, foreign_key: true
      t.references :sound , null: false, foreign_key: true

      t.timestamps
    end
  end
end
