class AddColumnsToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :description, :string
  end
end
