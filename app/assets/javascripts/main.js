
$( document ).ready(function() {
  var a = $('td').length
  console.log(a)


  $('td').each(function(i,el){
    var a = $(el).children()
    if(a.length >= 3){
      $(a).removeClass('hide')

      var abs = $(a[2])
    }
  })
});
