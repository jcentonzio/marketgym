class Order < ActiveRecord::Base
  belongs_to :access
  belongs_to :type_state
  belongs_to :user
end
