<script type="text/javascript">
;( function( $ ) {

  $( '.swipebox' ).swipebox();

} )( jQuery );
</script>
// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( '#gallery' ).click( function( e ) {
  e.preventDefault();
  $.swipebox( [
    { href:'big/image1.jpg', title:'My Caption' },
    { href:'big/image2.jpg', title:'My Second Caption' }
  ] );
} );
