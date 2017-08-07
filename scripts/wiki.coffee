# Description:
#   Wikipediaのリンクを返す
#
# Commands:
#   hubot wiki <keyword> - wikipediaのリンクを生成して返す
#   hubot wiki search <keyword> - <keyword>をwikiで検索する

request = require 'request'

module.exports = (robot) ->

  robot.respond /wiki (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]
    message = "https://ja.wikipedia.org/wiki/#{keyword}"
    msg.send message

  robot.respond /wiki search (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]
    request.get "https://ja.wikipedia.org/w/api.php?format=json&action=query&list=search&srsearch=#{keyword}", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send "Wikiの取得に失敗しました。"
      data = JSON.parse body
      message = ''
      for row in data.query.search
        message += "#{row.title}\n"
        message += "#{row.snippet}\n"
        message += "https://ja.wikipedia.org/wiki/#{row.title}"
        msg.send message
