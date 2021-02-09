class CreateMypages < ActiveRecord::Migration[6.0]
  def change
    create_table :mypages do |t|
      t.text :profile
      t.string :nickname
      t.references :user, null:false, foreign_key: true

      t.timestamps
    end
  end
end
