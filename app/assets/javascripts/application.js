// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-multiselect
//= require jquery_nested_form
//= require bootstrap-datepicker
//= require bootstrap-switch
//= require dropzone
//= require bootstrap-wysihtml5
//= require underscore
//= require gmaps/google
//= require_tree .



$(function() {
   $("#myModal").modal();
});



$(document).ready(function(){

    $('.wysihtml5').each(function(i, elem) {
      $(elem).wysihtml5();
    });

  })




 $(document).ready(function() {
        $('#example-enableClickableOptGroups').multiselect({
            nonSelectedText: 'Por favor, seleccione servicios',
            enableClickableOptGroups: true,
            buttonWidth: '100%'
        });
    });



$(document).ready(function() {
        $('#city').multiselect({
            nonSelectedText: 'Por favor, seleccione una opción',
        	buttonWidth: '100%',
            enableClickableOptGroups: true,
            enableCaseInsensitiveFiltering: true,
            filterPlaceholder: 'Buscar ciudad o comuna...'
        });
    }); 
