module ApplicationHelper
  
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


  def show_state(valor)
    if valor == true
      "<span class='active'> Habilidato</span>".html_safe
    else
      "<span class='danger'> Deshabilitado</span>".html_safe
    end
  end  

  def clp(number)
    number_to_currency(number, :unit => "$", :precision => 0, :delimiter => ".")
  end




end
