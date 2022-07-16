$(document).ready(function ()
{
        $('#svuota').click(function (){

            $.ajax({
                url :'SvuotaCarrello',
                type : 'get',
                success: function (){
                    $('#basket-total').html(0);
                    $('.basket-product').html("");
                    $('#basket-subtotal').html(0);
                    $('.basket-product').css("display", "none");
                    $('#buttn').attr("disabled", true);
                }

            });
        })
});