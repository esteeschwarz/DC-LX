<?php
$txt = "";
$ref = "self";
$arg = "";
//$rmd = "nprg004_eval";
$arg = $_REQUEST["arg"];//$rout = array();
$txt = $_REQUEST["v"];
$ref = $_REQUEST["ref"];
$rmd = $_REQUEST["rmd"];

// $myfile = fopen("../../pings/pingdata.csv", "a") or die("FUCT! I forgot to tie my shoes!");
// $force="\n";
// $date=date("Ymd(H:i:s)");
// $write="$date,$txt,$ref\n";
// fwrite($myfile, $write);
// //fwrite($myfile, $force);
// //sleep(1);
// #echo($write);
// fclose($myfile);

//exec("R < shellessai.R -s -q",$rout);
//echo("knitting....$id");
//set_time_limit(200); //to infinity
//exec('R -e knitr::knit("knite.Rmd",output="knitob.html")');

#exec('R < knitex.R '.' > /dev/null &');
#exec('R < testwrite.R -s -q'.' > /dev/null &');
//--vanilla 2>&1

$knit = 'knit_div.R';
//$call = 'R < fsi-knit.R --vanilla 2>&1'.' >/dev/null&'; //wks.
$script = $rmd.'.Rmd';
// following wks.
//$call = 'R < '.$knit.' --vanilla 2>&1'.' >/dev/null&';
$call = 'Rscript '.$knit.' '.$rmd.' --vanilla 2>&1'.' > /dev/null &';

// $uber=$txt;
// if ($txt!=""){
//   $call = 'Rscript '.$knit.' '.$ref.' '.$txt.' '.$arg.' --vanilla 2>&1'.' > /dev/null &';
// }
//$call = 'Rscript '.$knit.' '.$txt.' '.$arg.' '.$ref.' --vanilla 2>&1'.' > /dev/null &';

// $call = 'Rscript fsi-knit.R '.$arg.' --vanilla 2>&1'.' > /dev/null &';
//exec('R < k002.R --vanilla 2>&1'.' > /dev/null &',$rout);

//exec($call . '> /dev/null &',$rout);
//echo("calculating...");

//MAIN////////////
//echo($call);

exec($call,$rout);
echo("<pre><code>");
echo('DEBUG: ');
var_dump($rout);
echo("</code></pre>");

//$src="nprg004_eval_div.html";
 $src=$rmd.'_div.html';
 $file=fopen($src,"r");
 $srcbyte=filesize($src);
 $stat=stat($src);
 //echo readfile($src); 

echo fread($file,$srcbyte);


?>