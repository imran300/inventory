/* 
 *  Document   : script.js
 *  Author     : pixelcave
 *  Description: Custom javascript
 */

$(function(){
    
    /* Fix safari viewport problem */
    (function(doc) {var addEvent = 'addEventListener',type = 'gesturestart',qsa = 'querySelectorAll',scales = [1, 1],meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];function fix() {meta.content = 'width=device-width,minimum-scale=' + scales[0] + ',maximum-scale=' + scales[1];doc.removeEventListener(type, fix, true);}if ((meta = meta[meta.length - 1]) && addEvent in doc) {fix();scales = [.25, 1.6];doc[addEvent](type, fix, true);}}(document));
    
    /* Intro Page */
    $('#thank-you').fadeIn(2000, function(){
        $(this).fadeOut(2000, function(){
            $('#pixelcave-logo').fadeIn(2000, function(){
                $(this).fadeOut(2000, function(){
                    window.location.href = "docs.html";
                })
            }).css('display', 'block');
        });
    });
    
    /* Main navigation */
    $('#main-nav').toc({
        selectors: 'h1,h2',
        container: '#main',
        prefix: 'toc',
        highlightOffset: 50,
        itemClass: function(i, heading, $heading, prefix) {
          return $heading[0].tagName.toLowerCase();
        }
    }).sticky({ topSpacing: 0 });
    
    /* Footer links info on hover */
    var footerNav = $('#footer-nav-list');
    var footerNavInfoText = footerNav.find('.footer-info-text');
    
    footerNav
        .find('a')
        .mouseenter(function(){
            var infoText = $(this).attr('data-info');
            var infoClass = $(this).attr('data-rel');
            
            footerNavInfoText.removeClass().addClass('footer-info-text').addClass('text-' + infoClass).html(infoText);
        })
        .mouseleave(function(){
            footerNavInfoText.html('').html('');
        });     
});