class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.string :name
      t.integer :price
      t.references :type_access, index: true
      t.references :directory, index: true

      t.timestamps
    end
  end
end
