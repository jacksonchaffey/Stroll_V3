class CreatePuppies < ActiveRecord::Migration[6.0]
  def change
    create_table :puppies do |t|

      t.timestamps
    end
  end
end
