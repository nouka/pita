
module.exports = (robot) ->
  robot.router.get "/test/html", (req, res) ->

    html = """
<!DOCTYPE html><html lang="ja"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,shrink-to-fit=no"><meta name="theme-color" content="#000000"><link rel="manifest" href="/manifest.json"><link rel="shortcut icon" href="/favicon.ico"><title>ハピタス</title><script async src="https://www.googletagmanager.com/gtag/js?id=UA-34851258-9"></script><script>function gtag(){dataLayer.push(arguments)}window.dataLayer=window.dataLayer||[],gtag("js",new Date),gtag("config","UA-34851258-9")</script><script type="text/javascript">window._mfq=window._mfq||[],function(){var e=document.createElement("script");e.type="text/javascript",e.async=!0,e.src="//cdn.mouseflow.com/projects/db6e42e5-e445-4810-9148-f52abe8a026e.js",document.getElementsByTagName("head")[0].appendChild(e)}()</script><link href="/static/css/main.f09e3e2d.css" rel="stylesheet"></head><body><noscript>JavaScriptを有効にしてサイトをご覧ください。</noscript><div id="root"></div><script type="text/javascript" src="/static/js/main.6481a377.js"></script></body></html>
    """

    res.type 'html'
    res.send html
