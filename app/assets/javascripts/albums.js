$(document).on('turbolinks:load', function() {
  $('[type=file]').fileupload({
    progressall: function (e, data) {
      var progress = parseInt(data.loaded / data.total * 100, 10);
      $('#progress .bar').css(
          'width',
          progress + '%'
      );
    }
  });
});

$(document).on('turbolinks:load', function() {
  $('#justified-collection').justifiedGallery({
    lastRow: 'nojustify',      
    rowHeight: 160,            
    rel: 'gallery1',           
    margins: 2                 
  }).on('jg.complete', function() {
    $(this).find('a').colorbox({    
      maxWidth: '80%',         
      maxHeight: '80%',        
      opacity: 0.8,            
      transition: 'elastic',   
      current: ''
    }); 
  });   
});     

