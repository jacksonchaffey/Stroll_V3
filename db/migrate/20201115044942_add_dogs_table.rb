class AddDogsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :size
      t.references :user
    end

  end
end
