class CreateTypeAccesses < ActiveRecord::Migration
  def change
    create_table :type_accesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
