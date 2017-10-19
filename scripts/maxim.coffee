# Description
#   名言をランダムでつぶやいてくれる
#
# Commands:
#   hubot 名言 - 名言集から1つランダムにつぶやく

maxim = require './maxim.json'

module.exports = (robot) ->
  robot.respond /名言/, (msg) ->
    console.log maxim
    item = msg.random maxim
    console.log item
    msg.reply "#{item.title}"
