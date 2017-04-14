# Description:
#   Hubotが色々なリンクを教えてくれます
#
# Commands:
#   hubot 結合度 - 結合度のWikiページを返してくれます
#   hubot 凝集度 - 凝集度のWikiページを返してくれます
#   hubot hangout #{room} - room(system, morningmeeting, toC)

module.exports = (robot) ->

  robot.respond /hangout (.*)/i, (msg) ->
    room = msg.match[1]
    msg.send "https://hangouts.google.com/hangouts/_/oz-vision.co.jp/#{room}"

  robot.respond /(Scruti|スクリュー|品質)/, (msg) ->
    msg.send 'https://scrutinizer-ci.com/dashboard/repositories'

  robot.respond /朝会資料/, (msg) ->
    msg.send 'http://qiita.com/nouka/items/a1677b581abd9d99958b'
