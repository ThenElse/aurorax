<?
$recaptchasite = "6LeIhX8UAAAAAD9pgyv1_nK761M7qSl8YsnlBOGr";
$recaptchasecret = "6LeIhX8UAAAAAAnMTbaAz9IG14pLXh-3TatuoKos";

try {
     $db = new PDO("mysql:host=localhost;dbname=aurorax_test", "test", "3#rhe1C2");
} catch ( PDOException $e ){
     print $e->getMessage();
	 exit;
}
?>