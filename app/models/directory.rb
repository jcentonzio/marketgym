class Directory < ActiveRecord::Base
  belongs_to :customer
  belongs_to :city
  has_many :accesses
  has_many :medias
  has_many :schedules
  has_and_belongs_to_many :sitems

  validates :name, :address, :city_id, :phone, :terms, :description, :presence => { :message => "Es requerido" } 


  geocoded_by :veradd
  after_validation :geocode

  def veradd
    [self.address, self.city.name, "Chile"].compact.join(', ')
  end


  accepts_nested_attributes_for :schedules, :reject_if => :all_blank, allow_destroy: true



end
