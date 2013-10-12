<?php


require 'Classe/View.php';
require 'Model/Library.php';
$library = new Library();
$data = $library->get();

echo View::get('index.php',$data);
?>
