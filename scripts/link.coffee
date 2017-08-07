# Description:
#   リンクを生成して返す
#
# Commands:
#   hubot hangout <room> - ハングアウトのリンクを生成して返す

module.exports = (robot) ->

  robot.respond /hangout (.*)/i, (msg) ->
    room = msg.match[1]
    msg.send "https://hangouts.google.com/hangouts/_/oz-vision.co.jp/#{room}"

  robot.respond /朝会資料/, (msg) ->
    msg.send 'http://qiita.com/nouka/items/a1677b581abd9d99958b'
