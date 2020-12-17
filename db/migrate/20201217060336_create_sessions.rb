class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :room , null: false

      t.timestamps
    end
  end
end
