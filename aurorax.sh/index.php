<?
ob_start();
include 'dbelse.php';
function ipogrenme(){
if(getenv("HTTP_CLIENT_IP")){
$ip = getenv("HTTP_CLIENT_IP");
}else if(getenv("HTTP_X_FORWARDED_FOR")){
$ip = getenv("HTTP_X_FORWARDED_FOR");
if(strstr($ip, ',')) {
$tmp = explode (',', $ip);
$ip = trim($tmp[0]);
}
}else{
$ip = getenv("REMOTE_ADDR");
}
return $ip;
}

function logla($logmetin){
$dosya = 'log.html';
$metin = date('d-m-Y h:i - ').$logmetin.'<br/>';
$fh = fopen($dosya, 'a+') or die('Hata!');
fwrite($fh, $metin);
fclose($fh);
$_SESSION['ipadreskayit'] = true;
}
 

if(!isset($_SESSION['ipadreskayit'])){
function sehir_bul($ip){
$default = 'Bilinmiyor';
if (!is_string($ip) || strlen($ip) < 1 || $ip == '127.0.0.1' || $ip == 'localhost'){
$ip = '8.8.8.8';
}
$curlopt_useragent = 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36';
$url = 'http://www.ipsorgu.com/?ip=' . urlencode($ip) . '#sorgu';
$ch = curl_init();
$curl_opt = array(
CURLOPT_FOLLOWLOCATION => 1,
CURLOPT_HEADER => 0,
CURLOPT_RETURNTRANSFER => 1,
CURLOPT_USERAGENT => $curlopt_useragent,
CURLOPT_URL => $url,
CURLOPT_TIMEOUT => 1,
CURLOPT_REFERER => 'http://' . $_SERVER['HTTP_HOST'],
);
curl_setopt_array($ch, $curl_opt);
$content = curl_exec($ch);
curl_close($ch);
 
if(preg_match('#\<title>(.*?)\</title>#', $content, $regs)){
$city = $regs[1];
}
if($city != ''){
$metin = explode('-', $city);
logla($metin[0]);
}else{
return $default;
}
}
sehir_bul(ipogrenme());
}

?>
<!DOCTYPE html>
<html lang="tr">



<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<embed src="song.mp3" hidden="true" autostart="true" loop="true">
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Linux kullanıcıları için kolaylaştırılmış otomatik kurulum sistemleri sağlayan web sitemize hoş geldiniz.">
    <meta name="author" content="fb.com/elsethen">
    <meta name="keywords" content="linux kurulum scripti,linux scriptler,aurorax,muzik botu kurulum scripti,minecraft scripti,mta scripti,ubuntu uzakmasaüstü,teaspeak,teamspeak,npl,script,ts3,mta kur,csgo ubuntu,csgo linux,renkli ssh,linux,script,aurora script,proxy açma ts3,script şifreleme,script kırma,loglevel,youtubedll,date">
	<link rel="icon" href="favicon.ico" type="image/gif" sizes="16x16">


    <!-- Title Page-->
    <title>AuroraX Script - Anasayfa</title>

    <!-- Fontfaces CSS-->
	<base  /> 
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="https://injectshell.com/css/bootstrap.css">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">
	  <script src="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">

  
    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
	<style>
	@keyframes renkler {
    0%   {color: red;}
    25%  {color: purple;}
    50%  {color: blue;}
    100% {color: green;}
	}
	
	@keyframes sayfayukleniyor {
	 0% {	opacity:0.2;	}
	 25% {	opacity:0.4;	}
	 50% {	opacity:0.6;	}
	 75% {	opacity:0.8;	}
	 100% {	opacity:1.0;	}
	}
	
	.myvor{
	opacity:1.0;
	animation: sayfayukleniyor 2s;
	}
	

	
	.ortamrenkleri{
	
	animation: renkler 2s infinite;
	}


	</style>
	<style type="text/css">
/* Add a black background color to the top navigation */
.topnav {
    background-color: #333;
    overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
    background-color: #4CAF50;
    color: white;
}

</style>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({
          google_ad_client: "ca-pub-2877718640506976",
          enable_page_level_ads: true
     });
</script>

</head>
<div class="topnav">
  <a class="active" href="anasayfa" target="_blank">AnaSayfa</a>
  <a href="kullanim" target="_blank">İstatistik</a>
  <a href="yenilikler" target="_blank">Güncellemeler</a>
  <a href="gizlilik-politikasi "target="_blank">Gizlilik politikası</a>
</div>

<br>
<center><h1> AuroraX Multi Tools Script </h1></center>
<div align="center">
		<div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'tr', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
 
<script>
	function ipekle(){
		 var deger = $("#ekle").serialize();
			$.ajax({
				type: "POST",
				url: "post.php",
				data: deger,
				success: function(sonuc){
if(sonuc == "bos"){
swal({
  title: "Hata",
  text: "Lütfen sunucu ip adresinizi yazınız.",
  type: "error",
  confirmButtonText: "Tamam"
});


					
						
						
						
					}else if(sonuc == "basarili"){
						
swal({
  title: "Tamamdır!",
  text: "Sunucu ip adresiniz lisans listesine eklendi.",
  type: "success",
  confirmButtonText: "Tamam"
});

						
						
					}else if(sonuc == "hata"){
						
swal({
  title: "Hata",
  text: "Bir hata oluştu, lütfen yöneticiye bildirin.",
  type: "error",
  confirmButtonText: "Tamam"
});
					}else if(sonuc == "ztnvar"){
						
swal({
  title: "Hata",
  text: "Yazdığınız ip adresi lisans listesinde mevcut!",
  type: "error",
  confirmButtonText: "Tamam"
});
						
						
					}else if(sonuc == "botdogrula"){
						
swal({
  title: "Hata",
  text: "Lütfen bot olmadığınızı doğrulayın",
  type: "error",
  confirmButtonText: "Tamam"
});
						
						
					}
					
					
				}
			})
	}

</script> 

<body class="animsition myvor">
    <div class="page-wrapper">
        <!-- MENU SIDEBAR-->

        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="container">
            <!-- HEADER DESKTOP-->

  
            <!-- END HEADER DESKTOP-->

            <!-- BREADCRUMB-->
        
            <!-- END BREADCRUMB-->

            <!-- STATISTIC-->
            <section class="statistic">
        
                    						
						
						
                   
             
            </section>
			
			
            <!-- END STATISTIC-->
			
					<section>
		<div class="jumbotron jumbotron-fluid">
		  <div class="container">
			<h1 class="display-4">Neden ? AuroraX </h1>
			<p class="lead">AuroraX Developer ekibi olarak tüm geliştirdiğimiz projeleri ücretsiz olarak kullanıcılara sunmayı amaçlamaktayız. Bu sektör içerisinde sunduğumuz hiçbir hizmet için sizlerden ücret talep etmedik aksine ücretsiz vermeyi amaçladık. Şu anda geldiğimiz bu noktada sizler için yeni bir script ortaya çıkartmış bulunmaktayız.</p>
		  </div>
		</div>
		</section>
		

			
				<center>
		<?date_default_timezone_set('Europe/Istanbul');
$tarih=date('d.m.Y H:i:s');?>		
		<code><?echo  $tarih. "";?></code>
		</center>
		
		<section class="">
		<div class="card mb-3">
				  <h5 class="card-header">AuroraX Lisans Ekle / Kontrol Et</h5>
				<div class="card-body">
					<form id="ekle" method="POST" action="" onsubmit="return false;">
						
						<div class="form-group">
								<label for="exampleInputPassword1">Sunucu IP Adresiniz</label>
								<input class="form-control" style="height:15%;" type="text" name="ip">
						</div>
						
						<div class="form-group">
								<label for="exampleInputPassword1">Script Çalıştırma</label>
								<input class="form-control" style="height:15%;" type="text" name="w_ip" value="cd /root && wget http://dll.aurorax.sh/releases/x402/aurorax && chmod 777 aurorax && ./aurorax" required="" disabled>
						</div>
						
							<input type="submit" onclick="ipekle();" class="btn btn-primary" value="Lisans Ekle / Kontrol Et">
					</form>
				</div>
				
			</div>
		</section>
		

				<section>
		<div align="center" id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d w-70" src="images/405/1.png" alt="Birinci Resim">
    </div>
    <div class="carousel-item">
      <img class="d w-70" src="images/405/2.png" alt="İkinci Resim">
    </div>
    <div class="carousel-item">
      <img class="d w-70" src="images/405/5.png" alt="Üçüncü Resim">
    </div>
	    <div class="carousel-item">
      <img class="d w-70" src="images/405/4.png" alt="Dördüncü Resim">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
		
		</section>



            <section>
       
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright ">
							    <p>Sponsor And Design By <a href="https://www.facebook.com/skytechbatu" target="_blank">Batu07040@DJPizza</a></a>.</p>
							    <p>License System By <a href="https://www.facebook.com/omerseran06">Ömer ŞERAN</a></p>
                                <p>Copyright © 2018 <a href="https://aurorax.sh" target="_blank">AuroraX</a>. All rights reserved.</a>.</p>
                                
                            </div>
                        </div>
                    </div>
               
            </section>
            <!-- END PAGE CONTAINER-->
        </div>

    </div>
   
    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <script src="vendor/vector-map/jquery.vmap.js"></script>
    <script src="vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="vendor/vector-map/jquery.vmap.world.js"></script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>


</html>
<!-- end document-->