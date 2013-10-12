<?php

class View{
    
    public static function get($fileName,$data){
        ob_start();
        require __DIR__.'/../Views/'.$fileName;
        $html = ob_get_contents();
        ob_end_clean();
        return $html;
    }
}
?>
