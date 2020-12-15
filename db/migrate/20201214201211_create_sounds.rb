class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.string :title
      t.text :explain
      t.references :user , null: false, foreign_key: true

      t.timestamps
    end
  end
end
