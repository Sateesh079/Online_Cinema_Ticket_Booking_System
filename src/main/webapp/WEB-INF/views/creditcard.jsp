<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Payment</title>

<link rel="stylesheet"

 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style type="text/css">



  /* CSS styling for the form */

  .inlineimage{max-width:470px;margin-right: 8px;margin-left: 10px}.images{display: inline-block;max-width: 98%;height: auto;width: 22%;margin: 1%;left:20px;text-align: center}









.topnav {

 overflow: hidden;

 background-color: #333;

}



.topnav a {

 float: left;

 color: #f2f2f2;

 text-align: center;

 padding: 14px 16px;

 text-decoration: none;

 font-size: 17px;

}



.topnav a:hover {

 background-color: #ddd;

 color: black;

}



.topnav a.active {

 background-color: #04AA6D;

 color: white;

}

.padding{



   padding: 5rem !important;

}







 .form-control:focus {

  box-shadow: 10px 0px 0px 0px #ffffff !important;

  border-color: #4ca746;

}

</style>

</head>

<body>

   

 

 <div class="topnav">

<!-- <a href="/TheatreTable/List">All Theater</a>

 -->

 <a href="/movies">Home</a>

 <a href="/updatePass"> Update Password</a>

 <a href="/logout">Logout</a>

</div>

  <form method="post" action="/myBookings">



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/3.0.0/jquery.payment.min.js"></script>

 <div class="padding">

    <div class="row">

      <div class="container-fluid d-flex justify-content-center">

        <div class="col-sm-8 col-md-6">

          <div class="card">

            <div class="card-header">



            <div class="row">

              <div class="col-md-6">

                <span>CREDIT/DEBIT CARD PAYMENT</span>

                 

              </div>



              <div class="col-md-6 text-right" style="margin-top: -5px;">



                 <img src="https://img.icons8.com/color/36/000000/visa.png">

                 <img src="https://img.icons8.com/color/36/000000/mastercard.png">

                 <img src="https://img.icons8.com/color/36/000000/amex.png">

                      

              </div>    



            </div>   

  

            </div>

            <div class="card-body" style="height: 350px">

              <div class="form-group">

              <label for="cc-number" class="control-label">CARD NUMBER</label>

              <input id="cc-number" type="tel" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder="&bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull;" required>

             </div>



             <div class="row">



              <div class="col-md-6">

                 <div class="form-group">

                  <label for="cc-exp" class="control-label">CARD EXPIRY</label>

                  <input id="cc-exp" type="tel" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder="&bull;&bull; / &bull;&bull;" required>

                 </div>



                 

              </div>



               <div class="col-md-6">

                <div class="form-group">

                <label for="cc-cvc" class="control-label">CARD CVC</label>

                <input id="cc-cvc" type="tel" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="&bull;&bull;&bull;&bull;" required>

               </div>

              </div>

                

             </div>



    

             <div class="form-group">

              <label for="numeric" class="control-label">CARD HOLDER NAME</label>

              <input type="text" class="input-lg form-control">

             </div>



              <div class="form-group">

               

              <input value="MAKE PAYMENT" type="submit" class="btn btn-success btn-lg form-control" style="font-size: .8rem;">

             </div>

            </div>

          </div>

        </div>

      </div>

    </div>



</div>



    



  </form>

</body>



<script type="text/javascript">



$(function($) {

  $('[data-numeric]').payment('restrictNumeric');

  $('.cc-number').payment('formatCardNumber');

  $('.cc-exp').payment('formatCardExpiry');

  $('.cc-cvc').payment('formatCardCVC');

  $.fn.toggleInputError = function(erred) {

   this.parent('.form-group').toggleClass('has-error', erred);

   return this;

  };

  $('form').submit(function(e) {

   e.preventDefault();

   var cardType = $.payment.cardType($('.cc-number').val());

   $('.cc-number').toggleInputError(!$.payment.validateCardNumber($('.cc-number').val()));

   $('.cc-exp').toggleInputError(!$.payment.validateCardExpiry($('.cc-exp').payment('cardExpiryVal')));

   $('.cc-cvc').toggleInputError(!$.payment.validateCardCVC($('.cc-cvc').val(), cardType));

   $('.cc-brand').text(cardType);

   $('.validation').removeClass('text-danger text-success');

   $('.validation').addClass($('.has-error').length ? 'text-danger' : 'text-success');

  });

 });







</script>

</html>