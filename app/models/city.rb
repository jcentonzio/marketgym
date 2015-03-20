class City < ActiveRecord::Base
  belongs_to :zone
  has_many :directories
end
