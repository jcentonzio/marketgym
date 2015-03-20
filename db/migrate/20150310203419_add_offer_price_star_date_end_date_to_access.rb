class AddOfferPriceStarDateEndDateToAccess < ActiveRecord::Migration
  def change
    add_column :accesses, :offer_price, :integer
    add_column :accesses, :star_date, :date
    add_column :accesses, :end_date, :date
  end
end
