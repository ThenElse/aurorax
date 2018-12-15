<?
include 'database.php';

if($_POST){
	
$tur = $_POST["tur"];	
$ip = $_POST["ip"];
$tarih = date("d.m.Y - H:i:s");

$ki = $db->prepare("SELECT * FROM today WHERE ip = ? AND type = ?");
$ki->execute(array($ip, $tur));

if($ki->rowCount() == 0){
	
$servis = $db->prepare("INSERT INTO today SET
ip = ?,
type = ?,
tarih = ?
");
$servis_inc = $servis->execute(array($ip, $tur, $tarih));	

if($servis_inc){

$servis1 = $db->prepare("INSERT INTO all_today SET
ip = ?,
type = ?,
tarih = ?
");
$servis_inc2 = $servis1->execute(array($ip, $tur, $tarih));	

if($servis_inc2){
	echo "200/OK";
}else{
	echo "404a";
}

}else{
	echo "404b";
}	


	
}else{
	echo "ztnvar";
}	

}
?>