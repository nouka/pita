
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
var date = new Date('2017-12-30 23:59:59');
date = date.getTime();
var startDate = typeof date === 'string' ? new Date(date) : date;
var total = parseInt((Math.max(0, startDate - Date.now()) / 1000).toFixed(Math.max(0, Math.min(20, 0))) * 1000, 10);
var elem = document.getElementById('root');
elem.innerHTML = '' + total + ':' + Date.now();
</script>
</body>
</html>
    """

    res.type 'html'
    res.send html
