# Description:
#   HubotがWikiのリンクを教えてくれます
#
# Commands:
#   hubot wiki 結合度 - 結合度のWikiページを返してくれます
#   hubot wiki 凝集度 - 凝集度のWikiページを返してくれます

module.exports = (robot) ->

  robot.respond /wiki (.*)/i, (msg) ->
    word = msg.match[1]
    msg.send "https://ja.m.wikipedia.org/wiki/#{word}"
