<?php
require '/Classe/Db.php';

class Library extends Db{
    
    public function get(){
      return $this->getConnection()->query('select * from library')->fetchAll();
    }
}
?>
