class AddContentsToPuppies < ActiveRecord::Migration[6.0]
  def change
    add_column :puppies, :name, :string
    add_column :puppies, :breed, :string
    add_column :puppies, :weight, :float
    add_column :puppies, :age, :int
    add_reference :puppies, :user, index: true
  end
end
