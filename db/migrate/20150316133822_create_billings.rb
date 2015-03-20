class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.string :name_company
      t.string :rut
      t.string :gyre
      t.string :address
      t.string :phone
      t.references :city
      t.references :customer
      
      t.timestamps
    end
  end
end
