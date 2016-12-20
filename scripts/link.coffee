# Description:
#   Hubotが色々なリンクを教えてくれます
#
# Commands:
#   hubot 結合度 - 結合度のWikiページを返してくれます
#   hubot 凝集度 - 凝集度のWikiページを返してくれます

module.exports = (robot) ->

  robot.respond /.*結合度.*/, (msg) ->
    msg.send 'https://ja.m.wikipedia.org/wiki/結合度'

  robot.respond /.*凝集度.*/, (msg) ->
    msg.send 'https://ja.m.wikipedia.org/wiki/凝集度'

  robot.respond /.*(システム|開発|制作開発)朝会.*/, (msg) ->
    msg.send 'https://hangouts.google.com/hangouts/_/oz-vision.co.jp/system'

  robot.respond /.*全社朝会.*/, (msg) ->
    msg.send 'https://hangouts.google.com/hangouts/_/oz-vision.co.jp/morningmeeting'

  robot.respond /.*(Scrutinizer|スクリューティナイザー|コード品質).*/, (msg) ->
    msg.send 'https://scrutinizer-ci.com/dashboard/repositories'

  robot.respond /.*朝会資料.*/, (msg) ->
    msg.send 'http://qiita.com/nouka/items/a1677b581abd9d99958b'
