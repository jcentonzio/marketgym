class Schedule < ActiveRecord::Base
  belongs_to :directory
  has_and_belongs_to_many :periods
end
