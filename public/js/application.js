$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 


  $( "#target" ).submit(function( event ) {
      
      event.preventDefault();
      userInput = $(this).serialize(); //serialize // vas a obtener los valores de entrada en la forma
      console.log(userInput);
      $.post("/abuelita", userInput, function(data) {
       $(".abue").html(data);

       });
  });



});
