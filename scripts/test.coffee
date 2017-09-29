
module.exports = (robot) ->
  robot.router.get "/test/html", (req, res) ->

    html = """
      <!DOCTYPE html>
      <html>
        <head>
          <title>Finger Print Test</title>
          <script src="//cdn.jsdelivr.net/fingerprintjs2/1.5.1/fingerprint2.min.js"></script>
          <script>
            new Fingerprint2().get(function(result, components) {
              document.getElementById("result").value = result;
              document.getElementById("components").value = components;
            });
          </script>
        </head>
        <body>
          <h2>result</h2>
          <p id="result"></p>
          <h2>components</h2>
          <p id="components"></p>
        </body>
      </html>
    """

    res.type 'html'
    res.send html
