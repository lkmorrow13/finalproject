class CreatePuppies < ActiveRecord::Migration[5.2]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :cost
      t.integer :parent_id
      t.string :info
      t.datetime :birthday

      t.timestamps
    end
  end
end
