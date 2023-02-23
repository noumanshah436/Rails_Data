// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


// // simple javascript
// var CreditCard = {
//   cleanNumber: function(number) {
//     return number.replace(/[- ]/g, "");
//   },

//   validNumber: function(number) {
//     var total = 0;
//     number = this.cleanNumber(number);
//     for (var i=number.length-1; i >= 0; i--) {
//       var n = +number[i];
//       if ((i+number.length) % 2 == 0) {
//         n = n*2 > 9 ? n*2 - 9 : n*2;
//       }
//       total += n;
//     };
//     return total % 10 == 0;
//   }
// };

// $(function() {
//   $("#order_credit_card_number").blur(function() {
//     if (CreditCard.validNumber(this.value)) {
//       $("#credit_card_number_error").text("");
//     } else {
//       $("#credit_card_number_error").text("Invalid credit card number.");
//     }
//   });
// });
