class AddTermsDescriptionToDirectory < ActiveRecord::Migration
  def change
    add_column :directories, :terms, :text
    add_column :directories, :description, :text
  end
end
