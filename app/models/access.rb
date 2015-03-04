class Access < ActiveRecord::Base
  belongs_to :type_access
  belongs_to :directory
  has_many :orders
end
