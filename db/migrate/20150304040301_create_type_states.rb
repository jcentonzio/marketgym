class CreateTypeStates < ActiveRecord::Migration
  def change
    create_table :type_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
