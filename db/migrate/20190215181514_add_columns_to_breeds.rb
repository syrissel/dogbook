class AddColumnsToBreeds < ActiveRecord::Migration[5.2]
  def change
    add_column :breeds, :description, :string
  end
end
