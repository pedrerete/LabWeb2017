$(document).on("input paste keyup", ".product_qty", function( event ) {         
        var product_quantity = 0;
        var product_price = 0;

        var sub_total = 0;
        var grand_total = 0

        product_quantity = $(this).val();
        product_price = $(this).parent().prev().html();

        sub_total = product_price * product_quantity;

        $(this).parent().next().html(sub_total);


        $('.product_qty' ).each( function( k, v ) {
            product_quantity = parseInt ( $(this).val() ) ? parseInt ( $(this).val() ) : 0;
            product_price = parseFloat($(this).parent().prev().html())?parseFloat($(this).parent().prev().html()):0;

            console.log(product_quantity);
            console.log(product_price);            

            sub_total = parseFloat ( product_price * product_quantity );

            console.log(sub_total);

            grand_total += sub_total;

        });     
        $("#total_amount").html("$" + grand_total);       
      
    });
$( document ).ready(function() {
  var product_quantity = 0;
        var product_price = 0;

        var sub_total = 0;
        var grand_total = 0

        product_quantity = $(this).val();
        product_price = $(this).parent().prev().html();

        sub_total = product_price * product_quantity;

        $(this).parent().next().html(sub_total);


        $('.product_qty' ).each( function( k, v ) {
            product_quantity = parseInt ( $(this).val() ) ? parseInt ( $(this).val() ) : 0;
            product_price = parseFloat($(this).parent().prev().html())?parseFloat($(this).parent().prev().html()):0;

            console.log(product_quantity);
            console.log(product_price);            

            sub_total = parseFloat ( product_price * product_quantity );

            console.log(sub_total);

            grand_total += sub_total;

        });     
        $("#total_amount").html("$" + grand_total);
});