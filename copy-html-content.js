<script>

function performCopyEmail() {
  var emailLink = document.querySelector('.js-body');

  var range = document.createRange();
  range.selectNode(emailLink);
  window.getSelection().addRange(range);

  // try {
  //   var successful = document.execCommand('copy');
  //   var msg = successful ? 'successful' : 'unsuccessful';
  //   ChromeSamples.log('Copy email command was ' + msg);
  // } catch (err) {
  //   ChromeSamples.log('execCommand Error', err);
  // }
  document.execCommand('copy');
  window.getSelection().removeAllRanges(); 
  window.location='copy_card.asp'; 
} 



// Get the buttons
var copyEmailBtn = document.querySelector('.js-emailcopybtn');

// Add click event listeners
copyEmailBtn.addEventListener('click', performCopyEmail); 


// The initial state should be disabled, and then enable based on
// queryCommandSupported. This is currently a bug: crbug.com/476508
// Set the initial state
/*
 cutTextareaBtn.disabled = !document.queryCommandSupported('cut');
 copyEmailBtn.disabled = !document.queryCommandSupported('copy');
*/
</script>
