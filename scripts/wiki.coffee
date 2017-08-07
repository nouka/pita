# Description:
#   Wikipediaのリンクを返す
#
# Commands:
#   hubot wiki <keyword> - wikipediaのリンクを生成して返す
request = require 'request'

module.exports = (robot) ->

  robot.respond /wiki (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]

    request.get "https://ja.wikipedia.org/w/api.php?format=json&action=query&prop=revisions&rvprop=contents&titles=#{keyword}&rvparse", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send "Wikiの取得に失敗しました。"
      data = JSON.parse(body)[0]
      console.log(data)

    message = "https://ja.wikipedia.org/wiki/#{keyword}"
    msg.send message


#https://ja.wikipedia.org/w/api.php?format=xml&action=query&list=search&srsearch=%E7%B5%90%E5%90%88%E5%BA%A6
