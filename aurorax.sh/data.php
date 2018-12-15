<?php
include 'dbelse.php';


// TODAY

//login
$serversay2 = $db->prepare("SELECT COUNT(*) FROM today WHERE type = ?");
$serversay2->execute(array("giris"));
$today_join = $serversay2->fetchColumn();
// and login

//Sinusbot all
$serversay3 = $db->prepare("SELECT COUNT(*) FROM today WHERE type = ?");
$serversay3->execute(array("sinusbot"));
$today_sbot = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM today WHERE type = ?");
$serversay3->execute(array("dsinusbot"));
$today_dsbot = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM today WHERE type = ?");
$serversay3->execute(array("hsinusbot"));
$today_hsbot = $serversay3->fetchColumn();
// end sinusbot

//Firewall 
$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("ssh"));
$today_ssh = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("yproxy"));
$today_yproxy = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("prxoy"));
$today_proxy = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("potcp"));
$today_potcp = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("poudp"));
$today_poudp = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("xrdp"));
$today_xrdp = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("speedtest"));
$today_speedtest = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("yatqaexp"));
$today_yatqaexp = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("ipözel"));
$today_ipözel = $serversay3->fetchColumn();
//firewall end

// ALL

$all1 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$all1->execute(array("giris"));
$all_join = $all1->fetchColumn();

//game all
$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("spigot"));
$all_spigot = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("bukkit"));
$all_bukkit = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("vanilla"));
$all_vanilla = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("csgo"));
$all_csgo = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("mta"));
$all_mta = $serversay3->fetchColumn();
// end game

//Sinusbot all
$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("sinusbot"));
$all_sbot = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("dsinusbot"));
$all_dsbot = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("hsinusbot"));
$all_hsbot = $serversay3->fetchColumn();
// end sinusbot

//speak all
$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("teamspeak3"));
$all_ts = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("jts3servermod"));
$all_jts = $serversay3->fetchColumn();

$serversay3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$serversay3->execute(array("teaspeak"));
$all_tea = $serversay3->fetchColumn();
// end speak

$all3 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$all3->execute(array("sckir"));
$all_en = $all3->fetchColumn();

$all4 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$all4->execute(array("scsifre"));
$all_de = $all4->fetchColumn();

$all4 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$all4->execute(array("host"));
$all_host = $all4->fetchColumn();

$all4 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$all4->execute(array("npl"));
$all_npl = $all4->fetchColumn();

$all4 = $db->prepare("SELECT COUNT(*) FROM all_today WHERE type = ?");
$all4->execute(array("bilgi"));
$all_bilgi = $all4->fetchColumn();
?>
<!DOCTYPE html>
<html lang="tr">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Linux kullanıcıları için kolaylaştırılmış otomatik kurulum sistemleri sağlayan web sitemize hoş geldiniz.">
    <meta name="author" content="fb.com/elsethen">
    <meta name="keywords" content="linux kurulum scripti,linux scriptler,aurorax,muzik botu kurulum scripti,minecraft scripti,mta scripti,ubuntu uzakmasaüstü,teaspeak,teamspeak,npl,script,ts3,mta kur,csgo ubuntu,csgo linux,renkli ssh,linux,script,aurora script,proxy açma ts3,script şifreleme,script kırma,loglevel,youtubedll,date">
	<link rel="icon" href="favicon.ico" type="image/gif" sizes="16x16">

    <!-- Title Page-->
    <title>AuroraX Script - İstatistik</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">

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

</head>
<div class="topnav">
  <a class="active" href="anasayfa" target="_blank">AnaSayfa</a>
  <a href="kullanim" target="_blank">İstatistik</a>
  <a href="yenilikler" target="_blank">Güncellemeler</a>
  <a href="gizlilik-politikasi "target="_blank">Gizlilik politikası</a>
</div>
<br>
</head>
			<div align="center">
		<div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'tr', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
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
        
                    						
						
						
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $today_join; ?></h2>
                                    <span class="desc  ">Bugünkü Giriş</span>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $all_join + $today_join; ?></h2>
                                    <span class="desc">Toplam Giriş</span>

                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $today_sbot + $today_dsbot + $today_hsbot; ?></h2>
                                    <span class="desc">Bugünkü Sinusbot Kurulumları</span>
    
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                   <h2 class="number ortamrenkleri"><? echo $all_sbot + $all_dsbot + $all_hsbot; ?></h2>
                                    <span class="desc">Toplam Sinusbot Kurulumları</span>

                                </div>
                            </div>
                        </div>
                   
             
			 
            </section>
			            <section class="statistic">
        
                    						
						
						
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $today_ssh + $today_yproxy + $today_proxy + $today_potcp + $today_poudp + $today_xrdp + $today_speedtest + $today_yatqaexp + $today_ipözel; ?></h2>
                                    <span class="desc">Toplam Firewall Kurulumları</span>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $all_spigot + $all_bukkit + $all_vanilla + $all_csgo + $all_mta; ?></h2>
                                    <span class="desc">Toplam Oyun Kurulumları</span>

                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $all_ts + $all_tea + $all_jts; ?></h2>
                                    <span class="desc">Toplam (TeamSpeak,TeaSpeak,JTS3) Kurulumlar</span>
    
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item ">
                                    <h2 class="number ortamrenkleri"><? echo $all_host + $all_en + $all_de + $all_npl; ?></h2>
                                    <span class="desc">Toplam (Host,encrypt,decrypt,npl) Kurulumlar</span>

                                </div>
                            </div>
                        </div>
                   
             
			 
            </section>