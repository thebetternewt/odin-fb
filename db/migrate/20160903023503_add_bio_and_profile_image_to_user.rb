class AddBioAndProfileImageToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :admin, :boolean, default: false

    add_index :users, :name
  end
end
