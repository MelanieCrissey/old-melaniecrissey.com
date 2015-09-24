$('form select[name=pizzaSize]').change(function(){
  if ($('form select[name="pizzaSize"] option:selected').val() == 'custom'){
    $('#shape, #round').show();
  }else{
    $('#shape', '#round').hide();
  }
});
$('form select[name=pizzaSize]').change(function(){
  if ($('form select[name="pizzaSize"] option:selected').val() != 'custom'){
    $('#shape, #round, #rect').hide();
  }else{
    $('#shape').show();
  }
});
$('form select[name=pizzaShape]').change(function(){
  if ($('form select[name=pizzaShape] option:selected').val() == 'rect'){
    $('#rect').show();
  }else{
    $('#rect').hide();
  }
});
$('form select[name=pizzaShape]').change(function(){
  if ($('form select[name=pizzaShape] option:selected').val() != 'round'){
    $('#round').hide();
  }else{
    $('#round').show();
  }
});

$('div[type="submit"]').click(function(){
  $(this).hide();
  $('#post-submit').show();
  $('#formThanks').show();
});
