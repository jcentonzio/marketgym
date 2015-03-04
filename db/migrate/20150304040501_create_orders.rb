class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :amount
      t.references :access
      t.references :type_state
      t.references :user

      t.timestamps
    end
  end
end
