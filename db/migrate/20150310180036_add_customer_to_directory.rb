class AddCustomerToDirectory < ActiveRecord::Migration
  def change
    add_reference :directories, :customer, index: true
  end
end
