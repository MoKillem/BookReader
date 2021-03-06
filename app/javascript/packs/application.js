// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

window.onload = (event) => {
    // all the cheboxes and forms
    var check = document.getElementsByClassName('check-box') 
    var form =  document.getElementsByClassName('form-check-submit')
    var check_reading = document.getElementsByClassName('currentreadcheck') 
    var form_reading = document.getElementsByClassName('currentreadform') 
    for(let i =0; i < check.length; i++){
        check[i].addEventListener("change", function() {
            form[i].submit()
        });
    }
    for(let i =0; i < check_reading.length; i++){
        check_reading[i].addEventListener("change", function() {
            form_reading[i].submit()
        });
    }
  };