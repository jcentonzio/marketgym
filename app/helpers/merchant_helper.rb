module MerchantHelper


    def alert_customer(customer)
       if customer.directory.accesses.size == 0 
         "<div class='alert alert-warning alert-dismissible' role='alert'>
            <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
            <strong>¡Advertencia!</strong> Falta ingresar promociones</div>".html_safe
       end 

       if customer.directory.medias.size == 0 
         "<div class='alert alert-warning alert-dismissible' role='alert'>
            <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
            <strong>¡Advertencia!</strong> Ingresa imagenes del establecimiento</div>".html_safe
       end
       if customer.directory.schedules.size == 0 
         "<div class='alert alert-warning alert-dismissible' role='alert'>
            <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
            <strong>¡Advertencia!</strong> Ingresar el horario</div>".html_safe
       end	       	
	end	
	
	def have_promotion(promotion)
	  if promotion.size == 0
	    "No tienes promociones"
	  end   
	end	  
end
