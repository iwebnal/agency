<?php
  $post = $wp_query->post;
 
if (in_category('8')) {
	include(TEMPLATEPATH.'/single-default.php');
}
else if (in_category('11')) {
	include(TEMPLATEPATH.'/single-tv.php');
}
else {
	include(TEMPLATEPATH.'/single-product.php');
}
?>