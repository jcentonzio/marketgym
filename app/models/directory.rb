class Directory < ActiveRecord::Base
  belongs_to :user
  belongs_to :customer
  has_many :accesses
  has_and_belongs_to_many :sitems 

  accepts_nested_attributes_for :accesses, :reject_if => :all_blank, allow_destroy: true
end
