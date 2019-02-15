class AddColumnsToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :profile_photo, :string
    add_column :owners, :description, :string
  end
end
