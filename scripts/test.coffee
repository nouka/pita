# Description:
#   特定のルームに通知する
#
# Commands:
#   None
#
# URLS:
#   POST /api/notice?room=<room>&message=<message>

url = require 'url'
querystring = require 'querystring'

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
            <meta property="og:url" content="http://sp.hapitas.jp/product/detail/beau-p:10006951">
        <meta property="og:type" content="website">
            <meta property="og:title" content="スリッパ 5足セット グレイズ M&Lサイズ 夏スリッパ　ソフトタイプ かわいい 楽　おしゃれ 洗える 来客用【送料無料】【ポイント20倍】">
        <meta itemprop="og:headline" content="スリッパ 5足セット グレイズ M&Lサイズ 夏スリッパ　ソフトタイプ かわいい 楽　おしゃれ 洗える 来客用【送料無料】【ポイント20倍】">
                <meta property="og:description" content="来客用スリッパ5足組です。 シンプルながらおしゃれなデザイン 豊富なカラー展開で人気のグレイズスリッパ やさしい色合いで ちょっと美味しそう？な 新色が入荷しましたよ☆☆ カラー、サイズは選択肢でご指定ください。 シンプルなデザインで 履き口のカーブがおしゃれな感じ スリッパメーカーのスリッパには無い インテリア感覚のスリッパです。 表地はざっくりとした風合いの布地 インソールはベージュのパイル地です 底面は、ベージュのスエード風布地 滑り止めは付いておりません。 ソフトタイプで、足裏に合わせて曲がりますので 足音が静かです。 うしろ半分は、あまり曲がらないようになっていますので、 サッと足が入れやすいです。 甲生地：ポリエステル100% 中底生地：綿80%ポリエステル20% サイズ：Mサイズ23-24.5cmに対応 Lサイズ25-27cmに対応 カラー：モカ、モスグリーン、ネイビー、グレー、ベージュ、グリーン（黄色）、パープル、ピンク、ブラウン ブルー、ワイン、ラベンダー、ピーチの合計13色 Lサイズにピンクは生産されておりません。 選択肢でお選びいただけないカラーは品薄になっております。 中国製 こちらの商品は手洗いが可能です。 【ご注意】 ・水に中性洗剤をとかして手洗いしてください。 ・漂白剤は使用しないでください。 ・色落ちの可能性がありますので、他のものとは別に洗ってください ・洗濯後は形を整え、陰干しをしてください。 【コンビニ受取対応商品】インテリア感覚のおしゃれなスリッパ ざっくりした素材感ときれいなフォルムが素敵です。 カラーはやさしい色味の新色が加わって 全部で13色になりました♪♪ ※Lサイズのピンクは生産されておりません。 履き口のカーブがちょっと無いデザインですね。 サイズはMとLがございます。 モカは明るめの黄みのある茶色、まさにカフェモカのよう。 落ち着いた雰囲気のモスグリーン。 ネイビーは色の濃淡が深みを見せています。 グレーはやや濃いめの色味です。 ベージュは、ナチュラルなキナリの色、かなり白っぽいです。 メーカー表示グリーンになっていますが、黄色じゃないの？と思うような色 カラシ色の赤みが無い色です。 パープルはざっくりした風合いに濃淡が感じられます。 ピンクは愛らしいベビーピンク、パステルカラーです。 Mサイズのみ、Lサイズのピンクは生産されておりません。 ブラウンは、赤みのある、チョコレート色のような色 ブルーはやや赤みのある色味、鮮やかできれいです。 ワインは渋めのダークピンク、「大人のピンク」といった雰囲気♪ ふんわりペールトーンのラベンダー、薄い青紫色。 ピーチはピンクと比べると少しくすんだ感じの落ち着いた色味です。 おかげさまでランキング1位になりました。ありがとうございます。 M&Lサイズ 1,200円+税 M&Lサイズ 5足セット 5,400円+税 M&Lサイズ 10足セット 10,800円+税　送料無料">
                <meta property="og:image" content="http://thumbnail.image.rakuten.co.jp/@0_mall/beau-p/cabinet/1511/ir001set-01n1.jpg?_ex=128x128">
        <meta property="og:site_name" content="ハピタス">
    <meta property="fb:app_id" content="1622282411327627" />
    <meta name="twitter:card" content="summary" />

    <!-- End Meta info for facebook like button -->
    <title>ハピタスに無料会員登録する | ポイントサイトなら高還元率のハピタス | ネットショッピングでお得に貯めて現金やギフト券に交換</title>
            <meta name="description" content="無料で簡単！ネットショッピングで毎日の生活をお得に楽しく貯めて、現金やギフト券に交換。ハピタスはハッピーをプラスする高還元率のポイントサイトです。"/>
                <meta name="keywords" content="" />
        <link rel="index" href="/" />
    <link rel="shortcut icon" href="http://img-origin.hapitas.jp/img_rc/smart/img/icon/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" href="http://img-origin.hapitas.jp/img_rc/smart/img/icon/webclip.png" />
    <link rel="stylesheet" type="text/css" href="http://img-origin.hapitas.jp/img_rc/smart/css/default.css" />
    <link rel="stylesheet" type="text/css" href="http://img-origin.hapitas.jp/img_rc/smart/css/common.css?201709011534" />
            <link rel="stylesheet" type="text/css" href="http://img-origin.hapitas.jp/img_rc/smart/css/product.css" />
        <script type="text/javascript" src="http://img-origin.hapitas.jp/img_rc/smart/js/jssor.slider.min.js"></script>
        <link rel="stylesheet" type="text/css" href="http://img-origin.hapitas.jp/img_rc/smart/css/bootstrap.css" />
    <script type="text/javascript" src="http://img-origin.hapitas.jp/img_rc/smart/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="http://img-origin.hapitas.jp/img_rc/smart/js/bootstrap.min.js"></script>
    <!--script type="text/javascript" src="js/retina.js"></script-->
    <script type="text/javascript" src="http://img-origin.hapitas.jp/img_rc/smart/js/common.min.js?201702071400"></script>
        <script type="text/javascript">
        // 注意：ログイン情報、URL、お気に入りリストなどをJSに初期化、下に移動不可
        var islogin = false;
        var base_url = "http://sp.hapitas.jp/";
        var base_url_https = "https://rcsp.hapitas.jp/";
        var http_user_agent = "http://sp.hapitas.jp/";
        var favorite_list = new Array();
        var usedcheck_list = new Array();
        var ajax_index = 0, ajax_list = new Array();
    </script>
    <script type="text/javascript" src="/common/js/script.min.js?201702071400"></script>
    <script type="text/javascript" src="http://img-origin.hapitas.jp/img_rc/smart/js/footer_top.min.js?201702071400"></script>
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

    ga('create', 'UA-34851258-19', 'auto', {'name': 'deviceTotal'});
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
                <div class="header_inner clearfix">
            <p class="fl_l"><a href="http://sp.hapitas.jp/"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/common/logo.png" alt="ネットショッピングでお得にポイントを貯めて現金やギフト券に交換するならハピタス"></a></p>
                            <ul class="header_bnt">
                    <li><a href="http://sp.hapitas.jp/social_register"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/common/ico_regist.png">会員登録</a></li>
                    <li><a href="http://sp.hapitas.jp/auth/login"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/common/ico_login.png">ログイン</a></li>
                    <li><a href="javascript:void(0);" id="drawerOpen"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/common/ico_menu.png">メニュー</a></li>
                </ul>
                    </div>
    </header>

    <!--//メインコンテンツ--------->
    <div class="main_box">
        <div class="contents" style="position:relative">
<link rel="stylesheet" href="http://img-origin.hapitas.jp/img_rc/smart/css/headerbanner.css">

<div id="content-area" style="padding-top:30px">
    <div class="search_box_wrapper">
    <ul class="nav nav-tabs search-tabs-ul">
        <li class="search-tabs-li" id="shop-tab"><a href="#shopSearch" data-toggle="tab" class="search-tabs-link search-tabs-link-shop">ショップ・サービス検索</a></li>
        <li class="search-tabs-li active" id="product-tab"><a href="#productSearch" data-toggle="tab" class="search-tabs-link search-tabs-link-product">商品検索</a></li>
    </ul>
    <div class="tab-content">
        <div id="shopSearch" class="tab-pane search-tabs-content search-tabs-content-shop">
            <form action="http://sp.hapitas.jp/items/search" accept-charset="utf-8" method="get">                <div class="search_box clearfix">
                    <input name="srctxt" type="search" class="search_input" placeholder="ポイントが貯まるショップ・サービスを探す" value="">
                    <input name="srcbtn" class="search_btn" type="submit" value="">
                </div>
            </form>                            <div class="search_keyword">
    <p class="search_keyword_header">人気ワード：</p>
    <ul class="search_keyword_ul">
                    <li class="search_keyword_li">
                                <a href="http://sp.hapitas.jp/items/search/%E6%A5%BD%E5%A4%A9/relevance/rakuten_product" class="search_keyword_link">楽天</a>
            </li>
                    <li class="search_keyword_li">
                                <a href="http://sp.hapitas.jp/items/search/yahoo/relevance/rakuten_product" class="search_keyword_link">yahoo</a>
            </li>
                    <li class="search_keyword_li">
                                <a href="http://sp.hapitas.jp/items/search/Oisix/relevance/rakuten_product" class="search_keyword_link">Oisix</a>
            </li>
                    <li class="search_keyword_li">
                                <a href="http://sp.hapitas.jp/items/search/ANA/relevance/rakuten_product" class="search_keyword_link">ANA</a>
            </li>
            </ul>
</div>
                    </div>
        <div id="productSearch" class="tab-pane search-tabs-content search-tabs-content-product active">
            <form action="http://sp.hapitas.jp/product/search" accept-charset="utf-8" method="get">                <input name="keyword" type="search" class="product-search-keyword" placeholder="キーワードから探す" value="">
                <div class="product-search-categories">
                    <label for="category_id">
                        <select name="category_id" id="category_id">
                            <option value="0">全カテゴリから探す</option>
                                                                                                <option value="101240">CD・DVD・楽器</option>
                                                                    <option value="100804">インテリア・寝具・収納</option>
                                                                    <option value="101164">ホビー</option>
                                                                    <option value="566382">おもちゃ・ゲーム</option>
                                                                    <option value="100533">キッズ・ベビー・マタニティ</option>
                                                                    <option value="215783">日用品雑貨・文房具・手芸</option>
                                                                    <option value="216129">ジュエリー・アクセサリー</option>
                                                                    <option value="101070">スポーツ・アウトドア</option>
                                                                    <option value="100938">ダイエット・健康</option>
                                                                    <option value="100316">水・ソフトドリンク</option>
                                                                    <option value="100026">パソコン・周辺機器</option>
                                                                    <option value="216131">バッグ・小物・ブランド雑貨</option>
                                                                    <option value="100371">レディースファッション</option>
                                                                    <option value="100005">花・ガーデン・DIY</option>
                                                                    <option value="101213">ペット・ペットグッズ</option>
                                                                    <option value="211742">TV・オーディオ・カメラ</option>
                                                                    <option value="101114">車・バイク</option>
                                                                    <option value="100227">食品</option>
                                                                    <option value="100939">美容・コスメ・香水</option>
                                                                    <option value="200162">本・雑誌・コミック</option>
                                                                    <option value="101381">旅行・出張・チケット</option>
                                                                    <option value="101438">学び・サービス・保険</option>
                                                                    <option value="100000">百貨店・総合通販・ギフト</option>
                                                                    <option value="402853">デジタルコンテンツ</option>
                                                                    <option value="503190">車用品・バイク用品</option>
                                                                    <option value="100433">インナー・下着・ナイトウエア</option>
                                                                    <option value="510901">日本酒・焼酎</option>
                                                                    <option value="510915">ビール・洋酒</option>
                                                                    <option value="551167">スイーツ・お菓子</option>
                                                                    <option value="551169">医薬品・コンタクト・介護</option>
                                                                    <option value="551177">メンズファッション</option>
                                                                    <option value="558885">靴</option>
                                                                    <option value="558929">腕時計</option>
                                                                    <option value="558944">キッチン用品・食器・調理器具</option>
                                                                    <option value="562637">家電</option>
                                                                    <option value="564500">スマートフォン・タブレット</option>
                                                                    <option value="565004">光回線・モバイル通信</option>
                                                                                    </select>
                    </label>
                </div>
                <input name="search" type="submit" class="product-search-button" value="">
            </form>        </div>
    </div>
</div>

            <div class="product-detail" id="product-area">
            <header class="header-products">
                <h1 class="products-search-results">スリッパ 5足セット グレイズ M&Lサイズ 夏スリッパ　ソフトタイプ かわいい 楽　おしゃれ 洗える 来客用【送料無料】【ポイント20倍】</h1>
            </header>
            <div class="fixHeight clearfix">
                <div id="slider1_container" class="product_slider_container">
                    <div u="slides" class="product_slider_img">
                                                                                    <div>
                                    <img data-u="image" src="http://thumbnail.image.rakuten.co.jp/@0_mall/beau-p/cabinet/1511/ir001set-01n1.jpg?" />
                                </div>
                                                            <div>
                                    <img data-u="image" src="http://thumbnail.image.rakuten.co.jp/@0_mall/beau-p/cabinet/1401/ir001-02n.jpg?" />
                                </div>
                                                            <div>
                                    <img data-u="image" src="http://thumbnail.image.rakuten.co.jp/@0_mall/beau-p/cabinet/1401/ir001-03n.jpg?" />
                                </div>
                                                                        </div>
                    <div data-u="navigator" class="jssorb031" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
                        <div data-u="prototype" class="i">
                            <svg viewBox="0 0 16000 16000">
                                <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="product-data">
                    <div class="product-icons">
                                                    <span class="product-icon product-icon-credit-card">カード可</span>
                                                                            <span class="product-icon product-icon-postage">送料無料</span>
                                                                    </div>
                    <dl class="product-information">
                        <dt class="product-price-title">価格</dt>
                        <dd class="product-price">￥5,832</dd>
                        <dt class="product-point-title">ポイント</dt>
                        <dd class="product-point-detail"><p><img class="img-point-detail" src="http://img-origin.hapitas.jp/img_rc/smart/img/product/36x40.png"> 58pt</p></dd>
                    </dl>
                    <div class="product-review">
                        <div class="product-review-rating">
                                                                                                <span class="product-review-rating-active">★</span>
                                                                                                                                <span class="product-review-rating-active">★</span>
                                                                                                                                <span class="product-review-rating-active">★</span>
                                                                                                                                <span class="product-review-rating-active">★</span>
                                                                                                                                <span class="product-review-rating-inactive">☆</span>
                                                                                    </div>
                        <div class="product-review-count">(166件)</div>
                    </div>
                </div>
                <p class="product_btn_text">
                    <a href="/product/redirect?product_id=beau-p:10006951&apn=rakuten_product&affiliate_url=http%3A%2F%2Fhb.afl.rakuten.co.jp%2Fhgc%2Fg00ptkg3.rfnnyb16.g00ptkg3.rfnnz849%2F%3Fpc%3Dhttp%3A%2F%2Fitem.rakuten.co.jp%2Fbeau-p%2Fir001set%2F%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fbeau-p%2Fi%2F10006951%2F" target="_blank">ポイントを貯める</a>
                </p>
                <p class="product_share_des">お得な商品を友達に紹介してみよう</p>
                <div class="product-share-button"><ul class="product-share-button-ul">
<li class="product-share-button-li"><a href="https://www.facebook.com/dialog/share?app_id=1622282411327627&display=popup&href=http%3A%2F%2Frcsp.hapitas.jp%2Fproduct%2Fdetail%2Fbeau-p%3A10006951&redirect_uri=http%3A%2F%2Frcsp.hapitas.jp%2Fproduct%2Fdetail%2Fbeau-p%3A10006951" class="product-share-button-link"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/friend/friend_event201707/step2_facebook.png" alt="Facebookで紹介" class="product-share-button-img" /></a></li>
<li class="product-share-button-li"><a href="https://twitter.com/intent/tweet?url=http%3A%2F%2Frcsp.hapitas.jp%2Fproduct%2Fdetail%2Fbeau-p%3A10006951" class="product-share-button-link"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/friend/friend_event201707/step2_twitter.png" alt="Twitterで紹介" class="product-share-button-img" /></a></li>
<li class="product-share-button-li"><a href="https://plus.google.com/share?url=rcsp.hapitas.jp%2Fproduct%2Fdetail%2Fbeau-p%3A10006951" onclick="window.open(this.href, 'Gwindow', 'width=650, height=450, menubar=no, toolbar=no, scrollbars=yes'); return false;" class="product-share-button-link"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/friend/friend_event201707/step2_google_plus.png" alt="Google+で紹介" class="product-share-button-img" /></a></li>
<li class="product-share-button-li"><a href="http://line.me/R/msg/text/?http%3A%2F%2Frcsp.hapitas.jp%2Fproduct%2Fdetail%2Fbeau-p%3A10006951" class="product-share-button-link"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/friend/friend_event201707/step2_line.png" alt="LINEで紹介" class="product-share-button-img" /></a></li>
</ul></div>
            </div>
                            <div class="point-condition-text">
                    <div id="toggle-point-condition">ポイント獲得条件</div>
                    <div class="point-condition" style="display: none;">
                        <p class="point-condition-p"></p>
                        <div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><h4 style="width:100%;padding:0;margin-bottom:15px"><img src="http://img.hapitas.jp/img/images/header_bg_03.png" width="100%" alt="ポイント獲得条件：商品購入完了（入金確認必須）"></h4><div style="margin:0 20px;font-size:14px"><p style="padding-bottom:20px"><strong>ポイント獲得条件：商品購入完了（入金確認必須）</strong></p><p style="margin-bottom:10px;padding:5px 0 5px 32px;background:url(http://img.hapitas.jp/img/images/ico_style05.png) 0 0 no-repeat;font-size:14px">複数の店舗で商品を購入された場合、最初に購入（決済）された店舗（商品）のみポイント対象となりますので、<strong>複数店舗で商品購入される場合は、再度ハピタスから「ポイントを貯める」ボタンをクリックして商品を購入してください。複数店舗同時決済機能を利用した場合、ハピタスポイントの対象は一部店舗（商品）のみとなりますのでご注意ください。</strong></p><p style="padding:5px 0 20px 32px;background:url(http://img.hapitas.jp/img/images/ico_style05.png) 0 0 no-repeat"><strong>「送料」「ラッピング料金」「家電機器の保証金」などのオプション金額はポイント獲得対象外</strong>となりますのでご注意ください。<br>※楽天スーパーポイント・楽天キャッシュ充当分もハピタスポイントの対象となります。</p><p style="padding:5px 0 5px 15px;font-weight:bold">ポイント獲得対象金額の例</p><p style="padding:0 15px">※ 総合ポイント獲得対象金額 ≠ 購入時の総合計</p><p style="margin-left:20px;padding-bottom:30px"><a href="http://img.hapitas.jp/img/images/img_example02.png" target="_blank"><img src="http://img.hapitas.jp/img/images/img_example02.png" width="100%" alt="楽天のポイント獲得対象金額の例"></a></p></div></div><div><h4 style="width:100%;margin-bottom:15px;padding:0"><img src="http://img.hapitas.jp/img/images/header_bg_04.png" width="100%" alt="ポイント却下条件：未入金・虚偽・不正・重複・いたずら・キャンセルの場合"></h4><div style="margin:0 20px;font-size:14px"><p style="padding-bottom:20px"><strong><strong>ポイント</strong>却下条件：未入金・虚偽・不正・重複・いたずら・キャンセルの場合<br /><br /></strong></p><p style="padding:5px 0 5px 32px;background:url(http://img.hapitas.jp/img/images/ico_style05.png) 0 0 no-repeat;font-size:14px;font-weight:bold">レビューの閲覧にご注意</p><p style="margin-bottom:20px;padding:5px 15px 0 35px">お買い物の途中に以下商品ページの「レビューを見る」からレビューを閲覧された場合には、再度当ページから楽天市場のページに移動し、商品をご購入ください。</p><div style="position:relative;padding-bottom:30px;margin-left:30px"><a href="http://img.hapitas.jp/img/images/img_example01.png" target="_blank"><img src="http://img.hapitas.jp/img/images/img_example01.png" width="100%" alt="楽天のポイント無効になる例"></a></div><p style="padding:5px 0 5px 32px;background:url(http://img.hapitas.jp/img/images/ico_style05.png) 0 0 no-repeat;font-size:14px;font-weight:bold">楽天グループのサービスのご利用にご注意</p><p style="margin-bottom:20px;padding:5px 15px 0 35px">当ページからは『楽天市場』のお買い物のみがポイント対象になります。<br>『楽天ブックス』や『楽天トラベル』などの楽天グループの他サービスについてはそれぞれ別の専用ページをご用意しておりますのでハピタス内の検索窓などからそれぞれ移動してご利用ください。<br>※当ページから楽天グループの他サービスをご利用されますとポイントが正しく付与されない場合がございます。</p><p style="padding:5px 0 5px 32px;background:url(http://img.hapitas.jp/img/images/ico_style05.png) 0 0 no-repeat;font-size:14px;font-weight:bold">ご購入後の商品交換にご注意</p><p style="padding:5px 15px 10px 35px">お客様、または店舗の都合により、商品の交換や一部キャンセルなどになりますとシステム上、ポイントが無効になってしまいます。</p></div><div style="margin:0 20px 20px;padding:10px;border:1px solid #ddd;background:#ededed"><ul style="margin-left:25px"><li style="list-style:decimal;margin-bottom:15px">ポイントに関する調査依頼はお受けできませんので、あらかじめご了承ください。<br>※「お買い物あんしん保証」制度には対応しております。</li><li style="list-style:decimal">ハピタスポイントに関するお問い合わせに関しまして、広告主（楽天市場）に直接お問い合わせすることは固く禁じられて<br>おりますので、ご了承ください。<br>※万一、楽天市場に直接問い合わせをされた場合、今後、ハピタスから「楽天市場」を利用することができなくなってしまう措置や退会処置とさせていただく場合もございますので、ご注意ください。</li></ul></div></div></div><div></div></div>   </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div></div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>  </div><div></div>                    </div>
                </div>
                    </div>
    </div>

<script>
    $('#toggle-point-condition').click(function() {
        $('.point-condition').slideToggle(1000);
    });
</script>

<script>
    jQuery(document).ready(function ($) {
        var options = {
            $AutoPlay: 1,
            $AutoPlaySteps: 1,
            $Idle: 2000,
            $PauseOnHover: 1,
            $ArrowKeyNavigation: 1,
            $SlideEasing: $Jease$.$OutQuint,
            $SlideDuration: 1500,
            $MinDragOffsetToSlide: 20,
            $SlideSpacing: 0,
            $Cols: 1,
            $Align: 0,
            $UISearchMode: 1,
            $PlayOrientation: 1,
            $DragOrientation: 1,

            $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $ChanceToShow: 2,
                $Steps: 1
            },

            $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $ChanceToShow: 2,
                $Steps: 1,
                $Rows: 1,
                $SpacingX: 12,
                $SpacingY: 4,
                $Orientation: 1
            }
        };
        var jssor_slider1 = new $JssorSlider$("slider1_container", options);
        function ScaleSlider() {
            var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
            if (parentWidth) {
                jssor_slider1.$ScaleWidth(parentWidth - 30);
            }
            else
                window.setTimeout(ScaleSlider, 30);
        }
        ScaleSlider();
        $(window).bind("load", ScaleSlider);
        $(window).bind("resize", ScaleSlider);
        $(window).bind("orientationchange", ScaleSlider);
    });
    jQuery(function(){
        jQuery('#shop-tab').click(function(){
            jQuery('#product-area').hide();
        });
        jQuery('#product-tab').click(function(){
            jQuery('#product-area').show();
        });
    });
</script><link rel="stylesheet" href="http://img-origin.hapitas.jp/img_rc/smart/css/special.css">
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
                        <li><a href="http://rc.hapitas.jp">PC版ハピタス</a></li>
                    </ul>
                    <ul class="fmenu-ul">
                        <li class="fmenu-li"><a href="http://www.jipc.jp/campaign/index.html" target="_blank" data-ajax="false"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/jipc.gif" alt="jipc"></a></li>
                        <li class="fmenu-li p-mark"><a href="http://privacymark.jp/" target="_blank" data-ajax="false"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/privacy_mark.png" alt="Pマーク" ></a></li>
                    </ul>
                    <p class="copyright_text">Copyright &copy; 2017 OZvision Inc. All Rights Reserved.</p>
                </div>
            </footer>
        </div>
    </div>

    <!--//ドロワーメニュー--------->
    <nav class="drawer_navi" id="drawerNavi">
        <div class="drawer_navi_inner">
            <p class="drawer_close"><a href="javascript:void(0);" id="drawerCloseTop"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/common/ico_close.png">閉じる</a></p>
                            <p class="drawer_h">メニュー</p>
<ul class="drawer_list">
    <li><a href="http://sp.hapitas.jp/social_register">会員登録</a></li>
    <li><a href="http://sp.hapitas.jp/auth/login">ログイン</a></li>
    <li><a href="http://sp.hapitas.jp/about">ハピタスとは</a></li>
    <li><a href="http://help.hapitas.jp/" target="_blank">よくある質問</a></li>
    <li><a href="http://sp.hapitas.jp/inquiry">お問い合わせ</a></li>
    <li><a href="http://rc.hapitas.jp">PC版ハピタス</a></li>
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
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/1"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg01.png">総合ネットショッピング・オークション</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/2"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg13.png">ギフト・百貨店</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/3"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg08.png">クーポン・お取り寄せ・デリバリー</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/4"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg02.png">コスメ・ビューティー</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/5"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg11.png">ファッション・アクセサリー</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/6"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg12.png">ベビー・キッズ・マタニティ</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/7"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg03.png">日用品・コンタクトレンズ・健康食品</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/8"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg09.png">水・ドリンク</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/9"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg15.png">旅行・レジャー・交通手段</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/10"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg06.png">CD・DVD・動画配信</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/11"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg04.png">本・雑誌・電子書籍</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/12"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg10.png">インテリア・ペット・オフィス</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/13"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg05.png">家電・パソコン・通信</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/14"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg14.png">車・スポーツ用品</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/15"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg16.png">クレジットカード</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/16"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg17.png">保険・ローン・資産運用</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/17"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg18.png">引越し・不動産</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/18"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg19.png">仕事・資格・教育</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/19"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg07.png">ゲーム・コミュニティ</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/20"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg20.png">アプリ・エンタメ・着メロ</a></li>
                    <li><a href="http://sp.hapitas.jp/category_parent/detail/id/21"><img src="http://img.hapitas.jp/img_rc/smart/img/category_ico/ico_ctg21.png">その他サービス</a></li>
            </ul>
<p class="drawer_h">ご案内</p>
<ul class="drawer_list">
    <li><a href="http://sp.hapitas.jp/rules">利用規約</a></li>
    <li><a href="http://sp.hapitas.jp/kojin">個人情報保護方針</a></li>
    <li><a href="http://sp.hapitas.jp/company">運営会社</a></li>
</ul>
                        <p class="drawer_close"><a href="javascript:void(0);" id="drawerCloseBottom"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/common/ico_close.png">閉じる</a></p>
        </div>
    </nav>
</div>

            <!-- TOPボタン -->
            <div class="footer_top">
                <ul class="footer_top clearfix">
            </div>
            <p id="pagetop"><a href="#container"><img src="http://img-origin.hapitas.jp/img_rc/smart/img/top_button.png" height="80" width="80" alt="TOPへ戻る"></a></p>
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
