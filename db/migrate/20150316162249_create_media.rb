class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :file_name
      t.references :directory

      t.timestamps
    end
  end
end
