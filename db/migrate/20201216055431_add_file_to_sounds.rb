class AddFileToSounds < ActiveRecord::Migration[6.0]
  def change
    add_column :sounds, :file, :string
  end
end
