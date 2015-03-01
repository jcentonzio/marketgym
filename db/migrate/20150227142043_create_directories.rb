class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.references :city
      t.references :user, index: true
      t.boolean :state 
      t.timestamps
    end
  end
end
