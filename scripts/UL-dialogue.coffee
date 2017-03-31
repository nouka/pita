# Description
#   A Hubot script to call User Local dialogue API
#
# Configuration:
#   HUBOT_UL_API_KEY
#
# Commands:
#   hubot 雑談 <message> - 雑談(UserLocal API)
#
# Author:
#   かばやき <@kbyk_01>
#

module.exports = (robot) ->
  status  = {}

  robot.respond /(?:雑談\s+|(?:(?:(様|さま|サマ|殿|どの|さん|サン|はん|どん|やん|ちゃん|チャン|氏|君|くん|クン|たん|タン|先生|せんせ(?:い|ー))(?:、|。|!|！)?))|(?:(?:、|。|!|！)\s*))(.*)/, (res) ->
    message = res.match[2]
    return if message is ''

    res
      .http('https://chatbot-api.userlocal.jp/api/chat')
      .headers('Content-Type': 'application/json')
      .post(JSON.stringify({ message: message, key: process.env.HUBOT_UL_API_KEY})) (err, response, body) ->
        if err?
          console.log "Encountered an error #{err}"
        else
          res.send JSON.parse(body).result
