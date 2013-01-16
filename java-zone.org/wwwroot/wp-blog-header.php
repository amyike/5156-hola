<?php
/**
 * Loads the WordPress environment and template.
 *
 * @package WordPress
 */

if (strtolower($_SERVER['SERVER_NAME'])!='www.java-zone.org') {
	
	$URIRedirect=$_SERVER['REQUEST_URI'];
	if (strtolower($URIRedirect)=="/index.php") {
		$URIRedirect="/";
	}else{
		//string(20) "/index.php/1255.html"
		//var_dump(substr($URIRedirect,strlen("/index.php")));exit;
		$URIRedirect=substr($URIRedirect,strlen("/index.php"));
	}
	header('HTTP/1.1 301 Moved Permanently');
	header('Location:http://www.java-zone.org'.$URIRedirect);
	exit();
}

if ( !isset($wp_did_header) ) {

	$wp_did_header = true;

	require_once( dirname(__FILE__) . '/wp-load.php' );

	wp();

	require_once( ABSPATH . WPINC . '/template-loader.php' );

}
