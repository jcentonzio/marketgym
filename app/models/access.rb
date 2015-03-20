class Access < ActiveRecord::Base
  belongs_to :type_access
  belongs_to :directory
  has_many :orders
  
  validates :price, :presence => { :message => "Es requerido" }
  validates :offer_price, :presence => { :message => "Es requerido" }
  validates :type_access_id, :presence => { :message => "Es requerido" } 
  validates :type_access_id, :uniqueness => { :message => "Ya existe este tipo de acceso en tus promociones" }
  #validates :star_date, :presence => { :message => "Es requerido" }
  #validates :end_date, :presence => { :message => "Es requerido" }


end
