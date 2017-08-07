# Description:
#   Wikipediaのリンクを返す
#
# Commands:
#   hubot wiki <keyword> - wikipediaのリンクを生成して返す

module.exports = (robot) ->

  robot.respond /wiki (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]

    request = msg.http("https://ja.wikipedia.org/w/api.php")
                 .query({format  : "json",
                         action  : "query",
                         prop    : "revisions",
                         rvprop  : "contents",
                         titles  : keyword,
                         rvparse : true})
                 .get()

    request (err, res, body) ->
      json = JSON.parse body
      message = json.results[0].text if json.results.length > 0
      message += "\n"
    message += "https://ja.wikipedia.org/wiki/#{keyword}"
    msg.send message


#https://ja.wikipedia.org/w/api.php?format=xml&action=query&list=search&srsearch=%E7%B5%90%E5%90%88%E5%BA%A6
