# Description
#   A Hubot script to call User Local dialogue API
#
# Configuration:
#   HUBOT_UL_API_KEY
#
# Commands:
#   hubot <message> - コマンドっぽい接頭辞以外で始まった文章に人工知能が返信する
#
# Author:
#   かばやき <@kbyk_01>
#

module.exports = (robot) ->
  status  = {}

  robot.respond /^(?![a-zA-Z])(.*)/, (res) ->
    message = res.match[1]
    return if message is ''

    res
      .http('https://chatbot-api.userlocal.jp/api/chat')
      .headers('Content-Type': 'application/json')
      .post(JSON.stringify({ message: message, key: process.env.HUBOT_UL_API_KEY})) (err, response, body) ->
        if err?
          console.log "Encountered an error #{err}"
        else
          res.send JSON.parse(body).result
