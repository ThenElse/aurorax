<?
ob_start();
include 'dbelse.php';



if($_POST){
	
function curlKullan($url) {
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl, CURLOPT_TIMEOUT, 10);
    curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16");
    $curlData = curl_exec($curl);
    curl_close($curl);
    return $curlData;
}	
	
$ipaa = $_POST["ip"];	
$tur = $_POST["tur"];

if (strlen(trim($ipaa))==0) {
	
echo "bos";	
	
}else{
	
if(filter_var($ipaa, FILTER_VALIDATE_IP)){	

if(file_exists('licensetosblinux/'.$ipaa.'')) {
echo "ztnvar";
}else{

$olustur = touch("licensetosblinux/".$ipaa."");
if($olustur){
	echo "basarili";
}else{
	echo "hata";
}	
		
}	
	
	

	
}else{
	echo "numara";
}

}	
}else{
	echo "Sayfa sadece post metodu kullanılarak erişilebilir.";
}
?>