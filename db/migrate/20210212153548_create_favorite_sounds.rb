class CreateFavoriteSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_sounds do |t|
      t.references :sound, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :favorite, null: false, default: true

      t.timestamps
    end
  end
end
