<?php
use Models\Map\MapModel;
use function Helpers\dd;
use function Helpers\generateUrl;
use function Helpers\redirect;
use function Helpers\view;

class SupportController
{
 
    

   public function chatSupport(){
        view('support', 'list'); 
   }
}






?>