<?php
session_start();
if($_SESSION["current_user"]->loaiUser!=1)
	{				
		header('Location: index.php');
	}
$page_title = "Admin";

$base_filename = basename(__FILE__, '.php');
$page_body_file = "$base_filename/$base_filename.body.tpl";

include 'views/layout_admin.php';