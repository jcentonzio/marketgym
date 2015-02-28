class Sitem < ActiveRecord::Base
	belongs_to :service
	has_and_belongs_to_many :directories 
end
