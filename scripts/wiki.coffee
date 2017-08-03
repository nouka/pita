# Description:
#   Wikipediaのリンクを返す
#
# Commands:
#   hubot wiki <word> - wikipediaのリンクを生成して返す

module.exports = (robot) ->

  robot.respond /wiki (.*)/i, (msg) ->
    word = msg.match[1]
    msg.send "https://ja.m.wikipedia.org/wiki/#{word}"
