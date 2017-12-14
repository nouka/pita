
module.exports = (robot) ->
  robot.router.get "/test/html", (req, res) ->

    html = """
<!DOCTYPE html>
<html lang="ja">
<head>
<title>js test</title>
</head>
<body>
<div id="root"></div>
<script>
//var date = new Date('Sat Dec 30 2017 23:59:59 GMT+0900');
var date = new Date(Date.now());
var elem = document.getElementById('root');
elem.innerHTML = '' + date.getFullYear() + date.getMonth() + date.getDate() + date.getHours() + date.getMinutes() + date.getSeconds();
</script>
</body>
</html>
    """

    res.type 'html'
    res.send html
