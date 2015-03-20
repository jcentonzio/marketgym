class AddStateToAccess < ActiveRecord::Migration
  def change
    add_column :accesses, :state, :boolean
  end
end
