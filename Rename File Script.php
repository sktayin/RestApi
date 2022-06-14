<?php
//ini_set('memory_limit','-1');
ini_set('max_execution_time', '0');
$array = array();
$array[] = array(); //ac_num

$array[] = array(); //card_num

//$dir ='C:\xampp\htdocs\rename\card2';
$dir = 'F:\Tayin\Test'; //path of folder
if ($handle = opendir($dir)) 
{
    while (false !== ($fileName = readdir($handle))) 
    {
        if($fileName != '.' && $fileName != '..')
        {
        	$ar= explode(".",$fileName);

        	for ($i = 0; $i <= 118252; $i++){ //Change the value of $i
        	$v= $array[1][$i]; //card
			$u= $array[0][$i]; //ac


			$d=explode(" ", $v);
			$e=explode(" ", $u);


			if(in_array($ar[0],$d)){
				
				$new = array_replace($d,$e);
				print_r($new[0]) ;
				$newName =str_replace($fileName,"",$new[0]) ;
            	rename($dir."/".$fileName, $dir."/".$newName.".jpg");
				}
			}
        }
    }
}
 ?>