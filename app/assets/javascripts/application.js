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
//= require rails-ujs
//= require ckeditor/init
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
  var container = document.querySelector('.container-nav');
var main = document.querySelector('.main');

function toggleSidebar(){
    isShowingSidebar() ? hideSidebar() : showSidebar();
}

function showSidebar(){
    container.classList.add('show-sidebar');
}

function hideSidebar(){
    container.classList.remove('show-sidebar');
}

function isShowingSidebar(){
    return container.classList.contains('show-sidebar');
}

document.querySelector('.hamburger').addEventListener('click', toggleSidebar, false);

container.addEventListener('click', function(e){
    if(isShowingSidebar() && main.contains(e.target)){
        e.preventDefault();
        hideSidebar();
    }
}, true);
$(".animsition-overlay").animsition({
   inClass: 'overlay-slide-in-left',
   outClass: 'overlay-slide-out-left',
   inDuration: 1000,
   outDuration: 100,
   linkElement: '.animsition-link',
   // e.g. linkElement: 'a:not([target="_blank"]):not([href^="#"])'
   loading: true,
   loadingParentElement: 'body', //animsition wrapper element
   loadingClass: 'animsition-loading',
   loadingInner: '', // e.g '<img src="loading.svg" />'
   timeout: false,
   timeoutCountdown: 100,
   onLoadEvent: true,
   browser: [ 'animation-duration', '-webkit-animation-duration'],
   // "browser" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser.
   // The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
   overlay : true,
   overlayClass : 'animsition-overlay-slide',
   overlayParentElement : 'body',
   transition: function(url){ window.location.href = url; }
 });
})
