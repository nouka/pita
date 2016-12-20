# Description:
#   Hubotが色々なリンクを教えてくれます
#
# Commands:
#   hubot 結合度 - 結合度のWikiページを返してくれます
#   hubot 凝集度 - 凝集度のWikiページを返してくれます

module.exports = (robot) ->
  linkTable = [{"regex": /.*結合度.*/, "message": "https://ja.m.wikipedia.org/wiki/結合度"},
               {"regex": /.*凝集度.*/, "message": "https://ja.m.wikipedia.org/wiki/凝集度"},
               {"regex": /.*(システム|開発|制作開発)朝会.*/, "message": "https://hangouts.google.com/hangouts/_/oz-vision.co.jp/system"},
               {"regex": /.*全社朝会.*/, "message": "https://hangouts.google.com/hangouts/_/oz-vision.co.jp/morningmeeting"},
               {"regex": /.*(Scrutinizer|スクリューティナイザー|コード品質).*/, "message": "https://scrutinizer-ci.com/dashboard/repositories"}]

  for val in linkTable
    robot.respond val.regex, (msg) ->
      msg.send val.message
