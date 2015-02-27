class CreateSitems < ActiveRecord::Migration
  def change
    create_table :sitems do |t|
      t.string :name
      t.references :service

      t.timestamps
    end
  end
end
