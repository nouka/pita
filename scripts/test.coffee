
module.exports = (robot) ->
  robot.router.get "/test/html", (req, res) ->

    html = """

<!DOCTYPE html>
<html>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=640" />
    <!-- Start Meta info for facebook like button -->
            <meta property="og:url" content="http://sp.hapitas.jp">
        <meta property="og:type" content="website">
            <meta property="og:title" content="今なら会員登録で100円分のポイントがもらえる！">
        <meta itemprop="og:headline" content="今なら会員登録で100円分のポイントがもらえる！">
                <meta property="og:description" content="いつものショップでお買いものする前にハピタスを使うとショップのポイントとハピタスポイントがダブルで貯まってとってもお得！">
                <meta property="og:image" content="http://img.hapitas.jp/img/images/facebook_share_logo_white.png">
        <meta property="og:site_name" content="ハピタス">
    <meta property="fb:app_id" content="1622282411327627" />
    <meta name="twitter:card" content="summary" />

    <!-- End Meta info for facebook like button -->
    <title>今なら会員登録で100円分のポイントがもらえる！ | ポイントサイトなら高還元率のハピタス | ネットショッピングでお得に貯めて現金やギフト券に交換</title>
            <meta name="description" content="いつものショップでお買いものする前にハピタスを使うとショップのポイントとハピタスポイントがダブルで貯まってとってもお得！ | 無料で簡単！ネットショッピングで毎日の生活をお得に楽しく貯めて、現金やギフト券に交換。ハピタスはハッピーをプラスする高還元率のポイントサイトです。"/>
                <meta name="keywords" content="" />
                        <link rel="index" href="/" />
    <link rel="shortcut icon" href="http://img.hapitas.jp/img/smart/img/icon/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" href="http://img.hapitas.jp/img/smart/img/icon/webclip.png" />
    <link rel="stylesheet" type="text/css" href="http://img.hapitas.jp/img/smart/css/default.css" />
    <link rel="stylesheet" type="text/css" href="http://img.hapitas.jp/img/smart/css/common.css?201709011534" />
            <link rel="stylesheet" type="text/css" href="http://img.hapitas.jp/img/smart/css/introduction.css?20160106" />
        <link rel="stylesheet" type="text/css" href="http://img.hapitas.jp/img/smart/css/share_hapi.css" />
        <link rel="stylesheet" type="text/css" href="http://img.hapitas.jp/img/smart/css/bootstrap.css" />
    <script type="text/javascript" src="http://img.hapitas.jp/img/smart/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="http://img.hapitas.jp/img/smart/js/bootstrap.min.js"></script>
    <!--script type="text/javascript" src="js/retina.js"></script-->
    <script type="text/javascript" src="http://img.hapitas.jp/img/smart/js/common.min.js?201702071400"></script>
        <script type="text/javascript">
        // 注意：ログイン情報、URL、お気に入りリストなどをJSに初期化、下に移動不可
        var islogin = true;
        var base_url = "http://sp.hapitas.jp/";
        var base_url_https = "https://sp.hapitas.jp/";
        var http_user_agent = "http://sp.hapitas.jp/";
        var favorite_list = new Array();
        var usedcheck_list = new Array();
        var ajax_index = 0, ajax_list = new Array();
    </script>
    <script type="text/javascript" src="/common/js/script.min.js?201702071400"></script>
    <script type="text/javascript" src="http://img.hapitas.jp/img/smart/js/footer_top.min.js?201702071400"></script>
    <script type="text/javascript">
var _gaq = _gaq || [];
var pluginUrl = '//www.google-analytics.com/plugins/ga/inpage_linkid.js';
_gaq.push(['_require', 'inpage_linkid', pluginUrl]);
_gaq.push(['_setAccount', 'UA-34851258-4']);
_gaq.push(['_setDomainName', 'hapitas.jp']);

// カスタム変数
_gaq.push(['_setCustomVar','1','status','11357573', '1']);
_gaq.push(['_setCustomVar','2','gender','male', '1']);
_gaq.push(['_setCustomVar','3','age','36', '1']);
_gaq.push(['_setCustomVar','4','rank','bronze', '1']);

_gaq.push(['_trackPageview']);
(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-34851258-21', 'auto', {'name': 'deviceTotal'});
    ga('deviceTotal.send', 'pageview');
</script>
            <!-- Facebook Pixel Code -->
        <script>
            !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
            n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
            document,'script','//connect.facebook.net/en_US/fbevents.js');

            fbq('init', '954828511252146');
            fbq('track', 'PageView');

        </script>
        <noscript>
            <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=954828511252146&ev=PageView&noscript=1"/>
        </noscript>
        <!-- End Facebook Pixel Code -->
        </head>
<body>
<script src="//cdn.optimizely.com/js/2356410376.js"></script>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PZ53WR"
				  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-PZ53WR');</script>
<!-- End Google Tag Manager --><div>
    <!--//ヘッダー　グローバルナビ -->
    <header>
                    <div class="navi_logged_in">
                <div class="header_inner">
                    <p>
                        nokablankさん | <span class="point_cp">ご利用可能ポイント</span>
                        <span class="valid_point"><a href="http://sp.hapitas.jp/bankbook">580pt</a></span>
                    </p>
                </div>
            </div>
                <div class="header_inner clearfix">
            <p class="fl_l"><a href="http://sp.hapitas.jp/"><img src="http://img.hapitas.jp/img/smart/img/common/logo.png" alt="ネットショッピングでお得にポイントを貯めて現金やギフト券に交換するならハピタス"></a></p>
                            <ul class="header_bnt">
                    <li>
                        <a href="http://sp.hapitas.jp/message" class="message_unread_info">
                                                        <img src="http://img.hapitas.jp/img/smart/img/common/ico_message_unread.png">
                            <span class="message_unread_count">26</span>
                                                    メッセージ</a>
                   </li>
                    <li><a href="http://sp.hapitas.jp/mypage/favorite"><img src="http://img.hapitas.jp/img/smart/img/common/ico_favorite.png">お気に入り</a></li>
                    <li><a href="javascript:void(0);" id="drawerOpen"><img src="http://img.hapitas.jp/img/smart/img/common/ico_menu.png">メニュー</a></li>
                </ul>
                    </div>
    </header>

    <!--//メインコンテンツ--------->
    <div class="main_box">
        <div class="contents" style="position:relative">
<link rel="stylesheet" href="http://img.hapitas.jp/img/smart/css/headerbanner.css">

<div class="tokuten1_box">
    <p>【友達紹介制度シェアハピ】</p>
    <img src="http://img.hapitas.jp/img/smart/img/introduction/tokuten1.jpg" alt="シェアハピでポイントプレゼント">
    <img src="http://img.hapitas.jp/img/smart/img/introduction/h_text.jpg" alt="シェアハピを今すぐ紹介する">
</div>
<!-- SNSボタンを追加する -->
<link rel="stylesheet" type="text/css" href="http://img.hapitas.jp/img/smart/css/sns_button.css?20171018"/>

<script>
    $(function(){
        $('#go-line').click(function(){
            $.ajax({
                type: "POST",
                url: "http://sp.hapitas.jp/introductions/add_reserve_log?introducer_id=11357573&route=share_hapi_line&resultflg=json",
                async: false
            });
        });
        $('#go-mail').click(function(){
            $.ajax({
                type: "POST",
                url: "http://sp.hapitas.jp/introductions/add_reserve_log?introducer_id=11357573&route=share_hapi_mail&resultflg=json",
                async: false
            });
        });
        $('#go-twitter').click(function(){
            $.ajax({
                type: "POST",
                url: "http://sp.hapitas.jp/introductions/add_reserve_log?introducer_id=11357573&route=share_hapi_twitter&resultflg=json",
                async: false
            });
        });
        $('#go-facebook').click(function(){
            $.ajax({
                type: "POST",
                url: "http://sp.hapitas.jp/introductions/add_reserve_log?introducer_id=11357573&route=share_hapi_facebook&resultflg=json",
                async: false
            });
        });
    });
</script>

<div class="snsContents">
    <div class="listBox clearfix">
        <dl class="left" id="go-mail">
            <dt><a href="mailto:?subject=%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%81%AB%E3%81%94%E6%8B%9B%E5%BE%85%E2%89%AA100%E5%86%86%E5%88%86%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%83%97%E3%83%AC%E3%82%BC%E3%83%B3%E3%83%88%E2%89%AB&body=%EF%BC%BC%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%81%AB%E3%81%94%E6%8B%9B%E5%BE%85%EF%BC%8F%E2%89%AA100%E5%86%86%E5%88%86%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%83%97%E3%83%AC%E3%82%BC%E3%83%B3%E3%83%88%E2%89%AB%0A%0A%E3%81%84%E3%81%A4%E3%82%82%E3%81%AE%E3%83%8D%E3%83%83%E3%83%88%E3%82%B7%E3%83%A7%E3%83%83%E3%83%97%E3%81%A7%E8%B2%B7%E3%81%84%E3%82%82%E3%81%AE%E3%81%99%E3%82%8B%E6%99%82%E3%81%AB%E3%80%8C%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%80%8D%E3%82%92%E7%B5%8C%E7%94%B1%E3%81%99%E3%82%8B%E3%81%A8%E3%82%B7%E3%83%A7%E3%83%83%E3%83%97%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%AF%E3%82%82%E3%81%A1%E3%82%8D%E3%82%93%E3%80%8C%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%80%8D%E3%82%82%E8%B2%AF%E3%81%BE%E3%81%A3%E3%81%A6%E3%83%80%E3%83%96%E3%83%AB%E3%81%A7%E3%81%8A%E5%BE%97%EF%BC%81%0A%E8%B2%AF%E3%81%BE%E3%81%A3%E3%81%9F%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%AF%E3%80%8E1%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%EF%BC%9D1%E5%86%86%E3%80%8F%E3%81%A7%E7%8F%BE%E9%87%91%E3%82%84%E3%82%AE%E3%83%95%E3%83%88%E5%88%B8%E3%83%BB%E9%9B%BB%E5%AD%90%E3%83%9E%E3%83%8D%E3%83%BC%E3%81%AA%E3%81%A9%E6%A7%98%E3%80%85%E3%81%AA%E5%BD%A2%E3%81%A7%E4%BA%A4%E6%8F%9B%E3%81%A7%E3%81%8D%E3%82%8B%E3%81%8A%E5%BE%97%E3%81%AA%E3%82%B5%E3%82%A4%E3%83%88%E3%80%8C%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%80%8D%E3%81%AB%E3%81%8A%E5%8F%8B%E9%81%94%E3%81%8B%E3%82%89%E6%8B%9B%E5%BE%85%E3%81%95%E3%82%8C%E3%81%BE%E3%81%97%E3%81%9F%E3%80%82%0A%0A%E3%80%8C%E6%8B%9B%E5%BE%85%E7%94%A8URL%E3%80%8D%E3%81%8B%E3%82%89%E3%80%8C%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%80%8D%E3%81%AB%E7%99%BB%E9%8C%B2%E3%81%99%E3%82%8C%E3%81%B0%E3%80%81100%E5%86%86%E5%88%86%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%82%92GET%21%0A%0A%E2%96%BC%E6%8B%9B%E5%BE%85%E7%94%A8URL%E2%96%BC%0Ahttp%3A%2F%2Fsp.hapitas.jp%2Fsocial_register%3Fspot%3D11357573%26route%3Dmail%0A%E2%80%BB%E6%8B%9B%E5%BE%85%E7%94%A8URL%E3%81%8B%E3%82%89%E3%81%AE%E7%99%BB%E9%8C%B2%E3%81%AE%E3%81%BF%E3%81%8C%E3%83%97%E3%83%AC%E3%82%BC%E3%83%B3%E3%83%88%E3%81%AE%E5%AF%BE%E8%B1%A1%E3%81%A8%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%99%E3%80%82%E3%81%94%E6%B3%A8%E6%84%8F%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84%E3%80%82%0A%0A%E3%81%82%E3%81%AA%E3%81%9F%E3%81%AE%E6%AF%8E%E6%97%A5%E3%81%AB%E5%B0%8F%E3%81%95%E3%81%AA%E3%83%8F%E3%83%83%E3%83%94%E3%83%BC%E3%82%92%E3%83%97%E3%83%A9%E3%82%B9%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E3%80%81%E3%80%8C%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%80%8D%E3%82%92%E3%81%8A%E5%BD%B9%E7%AB%8B%E3%81%A6%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84%E3%80%82%0A%0A-----------------------------------------------------------------%0A%0A%E2%80%BB%E6%9C%AC%E3%83%A1%E3%83%BC%E3%83%AB%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6%E3%81%8A%E5%BF%83%E5%BD%93%E3%81%9F%E3%82%8A%E3%81%AE%E3%81%AA%E3%81%84%E5%A0%B4%E5%90%88%E3%81%AF%E3%80%81%E5%89%8A%E9%99%A4%E3%82%92%E3%81%8A%E9%A1%98%E3%81%84%E3%81%84%E3%81%9F%E3%81%97%E3%81%BE%E3%81%99%E3%80%82"
                   target="_blank"><img src="http://img.hapitas.jp/img/smart/img/introduction/step2_mail.png" alt="招待メール"></a>
            </dt>
        </dl>
        <dl class="left" id="go-line">
            <dt><a href="http://line.me/R/msg/text/?%E4%BB%8A%E3%81%AA%E3%82%89%E4%BC%9A%E5%93%A1%E7%99%BB%E9%8C%B2%E3%81%A7100%E5%86%86%E5%88%86%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%8C%E3%82%82%E3%82%89%E3%81%88%E3%82%8B%EF%BC%81%0A%E3%81%84%E3%81%A4%E3%82%82%E3%81%AE%E3%82%B7%E3%83%A7%E3%83%83%E3%83%97%E3%81%A7%E3%81%8A%E8%B2%B7%E3%81%84%E3%82%82%E3%81%AE%E3%81%99%E3%82%8B%E5%89%8D%E3%81%AB%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%82%92%E4%BD%BF%E3%81%86%E3%81%A8%E3%82%B7%E3%83%A7%E3%83%83%E3%83%97%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%A8%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%8C%E3%83%80%E3%83%96%E3%83%AB%E3%81%A7%E8%B2%AF%E3%81%BE%E3%81%A3%E3%81%A6%E3%81%A8%E3%81%A3%E3%81%A6%E3%82%82%E3%81%8A%E5%BE%97%EF%BC%81%0A%E2%96%B6http%3A%2F%2Fsp.hapitas.jp%2Fsocial_register%3Fspot%3D11357573%26route%3Dline" target="_blank"><img
                            src="http://img.hapitas.jp/img/smart/img/introduction/step2_line.png" alt="LINE"></a></dt>
        </dl>
        <dl class="left" id="go-twitter">
            <dt>
                <a href="http://twitter.com/share?url=http%3A%2F%2Fsp.hapitas.jp%2Fsocial_register%3Fspot%3D11357573%26route%3Dtwitter&text=%E4%BB%8A%E3%81%AA%E3%82%89%E4%BC%9A%E5%93%A1%E7%99%BB%E9%8C%B2%E3%81%A7100%E5%86%86%E5%88%86%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%8C%E3%82%82%E3%82%89%E3%81%88%E3%82%8B%EF%BC%81%0A%E3%81%84%E3%81%A4%E3%82%82%E3%81%AE%E3%82%B7%E3%83%A7%E3%83%83%E3%83%97%E3%81%A7%E3%81%8A%E8%B2%B7%E3%81%84%E3%82%82%E3%81%AE%E3%81%99%E3%82%8B%E5%89%8D%E3%81%AB%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%82%92%E4%BD%BF%E3%81%86%E3%81%A8%E3%82%B7%E3%83%A7%E3%83%83%E3%83%97%E3%81%AE%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%A8%E3%83%8F%E3%83%94%E3%82%BF%E3%82%B9%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%8C%E3%83%80%E3%83%96%E3%83%AB%E3%81%A7%E8%B2%AF%E3%81%BE%E3%81%A3%E3%81%A6%E3%81%A8%E3%81%A3%E3%81%A6%E3%82%82%E3%81%8A%E5%BE%97%EF%BC%81"
                   target="_blank"><img src="http://img.hapitas.jp/img/smart/img/introduction/step2_twitter.png"
                                        alt="twitter"></a></dt>
        </dl>
        <dl class="left" id="go-facebook">
            <dt><a href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fpitapita.herokuapp.com%2Ftest%2Fshare" target="_blank"><img
                            src="http://img.hapitas.jp/img/smart/img/introduction/step2_facebook.png" alt="Facebook"></a></dt>
        </dl>
    </div>
    <div class="caution_txt">
        <p>※Android端末をご利用のお客様は<br/>「LINE」「Twitter」「Facebook」でご紹介ください。<br/>
        「メール」で紹介されると招待が成立しない可能性がございます。</p>
    </div>
</div>
<!-- /snsContents -->
<div class="hyphen">
    <img src="http://img.hapitas.jp/img/smart/img/introduction/hyphen.jpg" alt="シェアハピを今すぐ紹介する">
</div>

<div class="tokuten2_box">
    <img src="http://img.hapitas.jp/img/smart/img/introduction/tokuten2.jpg" alt="シェアハピでポイントプレゼント"></br>
    <p>シェアハピ紹介制度の詳細や注意項目については<a class="text_link" href="http://sp.hapitas.jp/invite/wording"></p>
    <p>こちら</a>をご確認ください。</p>
</div>

<div class="hyphen">
    <img src="http://img.hapitas.jp/img/smart/img/introduction/hyphen.jpg" alt="">
</div>

<div class="hapitomo_box">
    <p>ハピ友紹介制度は<a class="text_link" href="http://sp.hapitas.jp/friend">こちら</a>をご確認ください。</p>
    <p></p>
</div><link rel="stylesheet" href="http://img.hapitas.jp/img/smart/css/special.css">
            <p class="catalog_text">
	            ハピタスを通るだけで、<br />
	            いつものネットショッピングが、<br />
                今よりもお得になります。
            </p>

            <!--//フッター--------->
            <footer>

<!-- カテゴリのリンクを追加 -->
                                <p class="ft_text_blue">カテゴリ</p>
                <div class="footer_category clearfix">
                    <ul class="footer_category_list">
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/1">総合ネットショッピング・オークション</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/2">ギフト・百貨店</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/3">クーポン・お取り寄せ・デリバリー</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/4">コスメ・ビューティー</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/5">ファッション・アクセサリー</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/6">ベビー・キッズ・マタニティ</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/7">日用品・コンタクトレンズ・健康食品</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/8">水・ドリンク</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/9">旅行・レジャー・交通手段</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/10">CD・DVD・動画配信</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/11">本・雑誌・電子書籍</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/12">インテリア・ペット・オフィス</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/13">家電・パソコン・通信</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/14">車・スポーツ用品</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/15">クレジットカード</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/16">保険・ローン・資産運用</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/17">引越し・不動産</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/18">仕事・資格・教育</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/19">ゲーム・コミュニティ</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/20">アプリ・エンタメ・着メロ</a></li>
                                                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/21">その他サービス</a></li>
                                            </ul>
                </div>
                <!-- カテゴリのリンクを追加 -->
                <div class="footer_inner">
                    <ul class="footer_link clearfix">
                        <li><a href="http://sp.hapitas.jp/rules">利用規約</a></li>
                        <li><a href="http://sp.hapitas.jp/company">運営会社</a></li>
                        <li><a href="http://sp.hapitas.jp/kojin">個人情報保護方針</a></li>
                        <li><a href="http://help.hapitas.jp/" target="_blank">よくある質問</a></li>
                        <li><a href="http://sp.hapitas.jp/inquiry">お問い合わせ</a></li>
                        <li><a href="http://hapitas.jp">PC版ハピタス</a></li>
                    </ul>
                    <ul class="fmenu-ul">
                        <li class="fmenu-li"><a href="http://www.jipc.jp/campaign/index.html" target="_blank" data-ajax="false"><img src="http://img.hapitas.jp/img/smart/img/jipc.gif" alt="jipc"></a></li>
                        <li class="fmenu-li p-mark"><a href="http://privacymark.jp/" target="_blank" data-ajax="false"><img src="http://img.hapitas.jp/img/smart/img/privacy_mark.png" alt="Pマーク" ></a></li>
                    </ul>
                    <p class="copyright_text">Copyright &copy; 2017 OZvision Inc. All Rights Reserved.</p>
                </div>
            </footer>
        </div>
    </div>

    <!--//ドロワーメニュー--------->
    <nav class="drawer_navi drawer_login" id="drawerNavi">
        <div class="drawer_navi_inner">
            <p class="drawer_close"><a href="javascript:void(0);" id="drawerCloseTop"><img src="http://img.hapitas.jp/img/smart/img/common/ico_close.png">閉じる</a></p>
                            <p class="drawer_h">会員メニュー</p>
<ul class="drawer_list">
    <li><a href="http://sp.hapitas.jp/bankbook">ポイント通帳</a></li>
    <li><a href="http://sp.hapitas.jp/mypage/favorite">お気に入り</a></li>
    <li><a href="http://sp.hapitas.jp/exchange">ポイント交換</a></li>
    <li><a href="http://sp.hapitas.jp/mypage">マイページ</a></li>
    <li>
                <a href="http://sp.hapitas.jp/invite">友達を紹介</a>
            </li>
    <li><a href="http://sp.hapitas.jp/auth/logout">ログアウト</a></li>
    <li><a href="http://help.hapitas.jp/" target="_blank">よくある質問</a></li>
    <li><a href="http://sp.hapitas.jp/inquiry">お問い合わせ</a></li>
    <li><a href="http://hapitas.jp">PC版ハピタス</a></li>
</ul>
<p class="drawer_h">スタッフおすすめ</p>
<ul class="drawer_list">
    <li><a href="/special/rakuten?apn=rakutenmenu">楽天サービス一覧
                    </a>
    </li>
    <li><a href="http://sp.hapitas.jp/high_reduction/shopping50prc?apn=menu_high_reduction">ショッピングで50%以上貯める
                    </a>
    </li>
    <li><a href="http://sp.hapitas.jp/high_reduction/service1000pt?apn=menu_high_reduction">サービス利用で1000pt以上貯める
                    </a>
    </li>
    <li><a href="http://sp.hapitas.jp/enquete?apn=menu_enquete">アンケートひろば
                    </a>
    </li>
</ul>
    <p class="drawer_h">カテゴリ</p>
    <ul class="drawer_list">
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/1"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg01.png">総合ネットショッピング・オークション</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/2"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg13.png">ギフト・百貨店</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/3"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg08.png">クーポン・お取り寄せ・デリバリー</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/4"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg02.png">コスメ・ビューティー</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/5"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg11.png">ファッション・アクセサリー</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/6"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg12.png">ベビー・キッズ・マタニティ</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/7"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg03.png">日用品・コンタクトレンズ・健康食品</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/8"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg09.png">水・ドリンク</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/9"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg15.png">旅行・レジャー・交通手段</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/10"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg06.png">CD・DVD・動画配信</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/11"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg04.png">本・雑誌・電子書籍</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/12"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg10.png">インテリア・ペット・オフィス</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/13"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg05.png">家電・パソコン・通信</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/14"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg14.png">車・スポーツ用品</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/15"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg16.png">クレジットカード</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/16"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg17.png">保険・ローン・資産運用</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/17"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg18.png">引越し・不動産</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/18"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg19.png">仕事・資格・教育</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/19"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg07.png">ゲーム・コミュニティ</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/20"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg20.png">アプリ・エンタメ・着メロ</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/21"><img src="http://img.hapitas.jp/img/smart/img/category_ico/ico_ctg21.png">その他サービス</a></li>
            </ul>
<p class="drawer_h">ご案内</p>
<ul class="drawer_list">
    <li><a href="http://sp.hapitas.jp/rules">利用規約</a></li>
    <li><a href="http://sp.hapitas.jp/kojin">個人情報保護方針</a></li>
    <li><a href="http://sp.hapitas.jp/company">運営会社</a></li>
</ul>
                        <p class="drawer_close"><a href="javascript:void(0);" id="drawerCloseBottom"><img src="http://img.hapitas.jp/img/smart/img/common/ico_close.png">閉じる</a></p>
        </div>
    </nav>
</div>

            <!-- TOPボタン -->
            <div class="footer_top">
                <ul class="footer_top clearfix">
            </div>
            <p id="pagetop"><a href="#container"><img src="http://img.hapitas.jp/img/smart/img/top_button.png" height="80" width="80" alt="TOPへ戻る"></a></p>
                </ul>
            </div>
            <!-- TOPボタン -->


<!-- Segment Pixel - ハピタス_リタゲタグ - DO NOT MODIFY -->
<script src='https://ssl.socdm.com/s/so_sg.js?sgid=29983&t=1' type='text/javascript'></script>
<!-- End of Segment Pixel -->
</body>
</html>
    """

    res.type 'html'
    res.send html

  robot.router.get "/test/share", (req, res) ->

    html = """

<!DOCTYPE html>
<html>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=640" />
    <!-- Start Meta info for facebook like button -->
            <meta property="og:url" content="http://sp.hapitas.jp">
        <meta property="og:type" content="website">
            <meta property="og:title" content="今なら会員登録で100円分のポイントがもらえる！">
        <meta itemprop="og:headline" content="今なら会員登録で100円分のポイントがもらえる！">
                <meta property="og:description" content="いつものショップでお買いものする前にハピタスを使うとショップのポイントとハピタスポイントがダブルで貯まってとってもお得！">
                <meta property="og:image" content="http://img.hapitas.jp/img/images/facebook_share_logo_white.png">
        <meta property="og:site_name" content="ハピタス">
    <meta property="fb:app_id" content="1622282411327627" />
    <meta name="twitter:card" content="summary" />

    <!-- End Meta info for facebook like button -->
    <title>ハピタスに無料会員登録する | ポイントサイトなら高還元率のハピタス | ネットショッピングでお得に貯めて現金やギフト券に交換</title>
            <meta name="description" content="無料会員登録 | 無料で簡単！ネットショッピングで毎日の生活をお得に楽しく貯めて、現金やギフト券に交換。ハピタスはハッピーをプラスする高還元率のポイントサイトです。"/>
                <meta name="keywords" content="" />
                        <link rel="index" href="/" />
    <link rel="shortcut icon" href="http://localhost:4874/smart/img/icon/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" href="http://localhost:4874/smart/img/icon/webclip.png" />
    <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/default.css" />
    <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/common.css?201709011534" />
            <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/app_new.css" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/rakuten-lp.css" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/register.css" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/form.css" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/minnade.css" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/social.css?201609261200" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/search-keyword.css" />
        <link rel="stylesheet" type="text/css" href="http://localhost:4874/smart/css/bootstrap.css" />
    <script type="text/javascript" src="http://localhost:4874/smart/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="http://localhost:4874/smart/js/bootstrap.min.js"></script>
    <!--script type="text/javascript" src="js/retina.js"></script-->
    <script type="text/javascript" src="http://localhost:4874/smart/js/common.min.js?201702071400"></script>
        <script type="text/javascript">
        // 注意：ログイン情報、URL、お気に入りリストなどをJSに初期化、下に移動不可
        var islogin = false;
        var base_url = "http://spitz.hapitas.jp/";
        var base_url_https = "https://spitz.hapitas.jp/";
        var http_user_agent = "http://spitz.hapitas.jp/";
        var favorite_list = new Array();
        var usedcheck_list = new Array();
        var ajax_index = 0, ajax_list = new Array();
    </script>
    <script type="text/javascript" src="/common/js/script.min.js?201702071400"></script>
    <script type="text/javascript" src="http://localhost:4874/smart/js/footer_top.min.js?201702071400"></script>
    <script type="text/javascript">
var _gaq = _gaq || [];
var pluginUrl = '//www.google-analytics.com/plugins/ga/inpage_linkid.js';
_gaq.push(['_require', 'inpage_linkid', pluginUrl]);
_gaq.push(['_setAccount', 'UA-34851258-9']);
_gaq.push(['_setDomainName', 'hapitas.jp']);

// カスタム変数
_gaq.push(['_setCustomVar','1','status','visitor', '1']);
_gaq.push(['_setCustomVar','2','gender','none', '1']);
_gaq.push(['_setCustomVar','3','age','none', '1']);
_gaq.push(['_setCustomVar','4','rank','none', '1']);

_gaq.push(['_trackPageview']);
(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

</script>
            <!-- Facebook Pixel Code -->
        <script>
            !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
            n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
            document,'script','//connect.facebook.net/en_US/fbevents.js');

            fbq('init', '954828511252146');
            fbq('track', 'PageView');

        </script>
        <noscript>
            <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=954828511252146&ev=PageView&noscript=1"/>
        </noscript>
        <!-- End Facebook Pixel Code -->
        </head>
<body>
<script src="//cdn.optimizely.com/js/2356410376.js"></script>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PZ53WR"
				  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-PZ53WR');</script>
<!-- End Google Tag Manager --><div>
    <!--//ヘッダー　グローバルナビ -->
    <header>
                <div class="header_inner clearfix">
            <p class="fl_l"><a href="http://spitz.hapitas.jp/"><img src="http://localhost:4874/smart/img/common/logo.png" alt="ネットショッピングでお得にポイントを貯めて現金やギフト券に交換するならハピタス"></a></p>
                            <ul class="header_bnt">
                    <li><a href="http://spitz.hapitas.jp/social_register"><img src="http://localhost:4874/smart/img/common/ico_regist.png">会員登録</a></li>
                    <li><a href="http://spitz.hapitas.jp/auth/login"><img src="http://localhost:4874/smart/img/common/ico_login.png">ログイン</a></li>
                    <li><a href="javascript:void(0);" id="drawerOpen"><img src="http://localhost:4874/smart/img/common/ico_menu.png">メニュー</a></li>
                </ul>
                    </div>
    </header>

    <!--//メインコンテンツ--------->
    <div class="main_box">
        <div class="contents" style="position:relative">
<link rel="stylesheet" href="http://localhost:4874/smart/css/headerbanner.css">

<h1 class="h_text">ハピタスに会員登録(無料)する</h1>
<div class="btn_social_login yahoo_regist mt50"><a href="https://api.socialplus.jp/ozvision/testsp/yahoo/authenticate?callback=https%3A%2F%2Fspitz.hapitas.jp%2Fsocial_login%3Fprovider%3Dyahoo"></a></div>
<div class="btn_social_login facebook_regist mt20 "><a href="https://api.socialplus.jp/ozvision/testsp/facebook/authenticate?callback=https%3A%2F%2Fspitz.hapitas.jp%2Fsocial_login%3Fprovider%3Dfacebook&extended_profile=true"></a></div>
<div  class="btn_social_login gplus_regist mt20 mb10"><a href="https://api.socialplus.jp/ozvision/testsp/gplus/authenticate?callback=https%3A%2F%2Fspitz.hapitas.jp%2Fsocial_login%3Fprovider%3Dgplus"></a></div>
<br>
<p class="text_bold_center">メールアドレスで会員登録する</p>
<div class="btn_social_login mail_regist mt20"><a class="mb0" href="https://spitz.hapitas.jp/register/form"></a></div>
<input type="hidden" name="introducer" id="introducer" value=""/>
<link rel="stylesheet" href="http://localhost:4874/smart/css/special.css">
            <p class="catalog_text">
	            ハピタスを通るだけで、<br />
	            いつものネットショッピングが、<br />
                今よりもお得になります。
            </p>

            <!--//フッター--------->
            <footer>

<!-- カテゴリのリンクを追加 -->
                                <p class="ft_text_blue">カテゴリ</p>
                <div class="footer_category clearfix">
                    <ul class="footer_category_list">
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/1">総合ネットショッピング・オークション</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/2">ギフト・百貨店</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/3">クーポン・お取り寄せ・デリバリー</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/4">コスメ・ビューティー</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/5">ファッション・アクセサリー</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/6">ベビー・キッズ・マタニティ</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/7">日用品・コンタクトレンズ・健康食品</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/8">水・ドリンク</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/9">旅行・レジャー・交通手段</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/10">CD・DVD・動画配信</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/11">本・雑誌・電子書籍</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/12">インテリア・ペット・オフィス</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/13">家電・パソコン・通信</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/14">車・スポーツ用品</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/15">クレジットカード</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/16">保険・ローン・資産運用</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/17">引越し・不動産</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/18">仕事・資格・教育</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/19">ゲーム・コミュニティ</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/20">アプリ・エンタメ・着メロ</a></li>
                                                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/21">その他サービス</a></li>
                                            </ul>
                </div>
                <!-- カテゴリのリンクを追加 -->
                <div class="footer_inner">
                    <ul class="footer_link clearfix">
                        <li><a href="http://spitz.hapitas.jp/rules">利用規約</a></li>
                        <li><a href="http://spitz.hapitas.jp/company">運営会社</a></li>
                        <li><a href="http://spitz.hapitas.jp/kojin">個人情報保護方針</a></li>
                        <li><a href="http://help.hapitas.jp/" target="_blank">よくある質問</a></li>
                        <li><a href="http://spitz.hapitas.jp/inquiry">お問い合わせ</a></li>
                        <li><a href="http://rc.hapitas.jp">PC版ハピタス</a></li>
                    </ul>
                    <ul class="fmenu-ul">
                        <li class="fmenu-li"><a href="http://www.jipc.jp/campaign/index.html" target="_blank" data-ajax="false"><img src="http://localhost:4874/smart/img/jipc.gif" alt="jipc"></a></li>
                        <li class="fmenu-li p-mark"><a href="http://privacymark.jp/" target="_blank" data-ajax="false"><img src="http://localhost:4874/smart/img/privacy_mark.png" alt="Pマーク" ></a></li>
                    </ul>
                    <p class="copyright_text">Copyright &copy; 2017 OZvision Inc. All Rights Reserved.</p>
                </div>
            </footer>
        </div>
    </div>

    <!--//ドロワーメニュー--------->
    <nav class="drawer_navi" id="drawerNavi">
        <div class="drawer_navi_inner">
            <p class="drawer_close"><a href="javascript:void(0);" id="drawerCloseTop"><img src="http://localhost:4874/smart/img/common/ico_close.png">閉じる</a></p>
                            <p class="drawer_h">メニュー</p>
<ul class="drawer_list">
    <li><a href="http://spitz.hapitas.jp/social_register">会員登録</a></li>
    <li><a href="http://spitz.hapitas.jp/auth/login">ログイン</a></li>
    <li><a href="http://spitz.hapitas.jp/about">ハピタスとは</a></li>
    <li><a href="http://help.hapitas.jp/" target="_blank">よくある質問</a></li>
    <li><a href="http://spitz.hapitas.jp/inquiry">お問い合わせ</a></li>
    <li><a href="http://rc.hapitas.jp">PC版ハピタス</a></li>
</ul>
<p class="drawer_h">スタッフおすすめ</p>
<ul class="drawer_list">
    <li><a href="/special/rakuten?apn=rakutenmenu">楽天サービス一覧
                    </a>
    </li>
    <li><a href="http://spitz.hapitas.jp/high_reduction/shopping50prc?apn=menu_high_reduction">ショッピングで50%以上貯める
                    </a>
    </li>
    <li><a href="http://spitz.hapitas.jp/high_reduction/service1000pt?apn=menu_high_reduction">サービス利用で1000pt以上貯める
                    </a>
    </li>
    <li><a href="http://spitz.hapitas.jp/enquete?apn=menu_enquete">アンケートひろば
                    </a>
    </li>
</ul>
    <p class="drawer_h">カテゴリ</p>
    <ul class="drawer_list">
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/1"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg01.png">総合ネットショッピング・オークション</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/2"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg13.png">ギフト・百貨店</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/3"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg08.png">クーポン・お取り寄せ・デリバリー</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/4"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg02.png">コスメ・ビューティー</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/5"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg11.png">ファッション・アクセサリー</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/6"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg12.png">ベビー・キッズ・マタニティ</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/7"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg03.png">日用品・コンタクトレンズ・健康食品</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/8"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg09.png">水・ドリンク</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/9"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg15.png">旅行・レジャー・交通手段</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/10"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg06.png">CD・DVD・動画配信</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/11"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg04.png">本・雑誌・電子書籍</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/12"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg10.png">インテリア・ペット・オフィス</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/13"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg05.png">家電・パソコン・通信</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/14"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg14.png">車・スポーツ用品</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/15"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg16.png">クレジットカード</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/16"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg17.png">保険・ローン・資産運用</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/17"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg18.png">引越し・不動産</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/18"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg19.png">仕事・資格・教育</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/19"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg07.png">ゲーム・コミュニティ</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/20"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg20.png">アプリ・エンタメ・着メロ</a></li>
                    <li><a href="http://spitz.hapitas.jp/category_parent/detail/id/21"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg21.png">その他サービス</a></li>
            </ul>
<p class="drawer_h">ご案内</p>
<ul class="drawer_list">
    <li><a href="http://spitz.hapitas.jp/rules">利用規約</a></li>
    <li><a href="http://spitz.hapitas.jp/kojin">個人情報保護方針</a></li>
    <li><a href="http://spitz.hapitas.jp/company">運営会社</a></li>
</ul>
                        <p class="drawer_close"><a href="javascript:void(0);" id="drawerCloseBottom"><img src="http://localhost:4874/smart/img/common/ico_close.png">閉じる</a></p>
        </div>
    </nav>
</div>

            <!-- TOPボタン -->
            <div class="footer_top">
                <ul class="footer_top clearfix">
            </div>
            <p id="pagetop"><a href="#container"><img src="http://localhost:4874/smart/img/top_button.png" height="80" width="80" alt="TOPへ戻る"></a></p>
                </ul>
            </div>
            <!-- TOPボタン -->


<!-- Segment Pixel - ハピタス_リタゲタグ - DO NOT MODIFY -->
<script src='https://ssl.socdm.com/s/so_sg.js?sgid=29983&t=1' type='text/javascript'></script>
<!-- End of Segment Pixel -->
</body>
</html>

    """

    res.type 'html'
    res.send html
