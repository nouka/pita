Google = require('./gapi.js')
request = require('request')

# Description:
#   Hubotが挨拶してくれます。
#
# Commands:
#   hubot おはよう - おはようと返してくれます
#   hubot お疲れ様 - お疲れ様と返してくれます

module.exports = (robot) ->

  robot.respond /.*(おはよう|お早う|good morning).*/, (msg) ->
    date = new Date()
    msg.send 'おはようございます、' + msg.message.user.name + 'さん。\n出勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。'

  robot.respond /.*こんにち(は|わ).*/, (msg) ->
    msg.send 'こんにちは、' + msg.message.user.name + 'さん。'

  robot.respond /.*((お疲れ|おつかれ)(さま|様)|オツカレ).*/, (msg) ->
    date = new Date()
    msg.send 'お疲れ様でした、' + msg.message.user.name + 'さん。\n退勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。'

  robot.respond /.*(おやすみ|またね).*/, (msg) ->
    msg.send 'おやすみなさい。また明日。'

  robot.respond /.*朝会資料.*/, (msg) ->
    msg.send 'http://qiita.com/nouka/items/a1677b581abd9d99958b'

  robot.respond /.*(ありがと|サンキュー|Thank).*/, (msg) ->
    msg.send 'いえいえ、どういたしまして。'

  robot.respond /.*(元気|げんき|ゲンキ).*？/, (msg) ->
    msg.send 'まあまあです。'

  robot.respond /.*(お腹|ハラ|腹)(すいた|減った|へった|ヘッタ).*/, (msg) ->
    msg.send 'ボクもヘッタ'

  robot.respond /.*結合度.*/, (msg) ->
    msg.send 'https://ja.m.wikipedia.org/wiki/結合度'

  robot.respond /.*凝集度.*/, (msg) ->
    msg.send 'https://ja.m.wikipedia.org/wiki/凝集度'

  robot.respond /.*システム朝会.*/, (msg) ->
    msg.send 'https://hangouts.google.com/hangouts/_/oz-vision.co.jp/system'

  robot.respond /.*全社朝会.*/, (msg) ->
    msg.send 'https://hangouts.google.com/hangouts/_/oz-vision.co.jp/morningmeeting'

  robot.respond /.*(Scrutinizer|スクリューティナイザー|コード品質).*/, (msg) ->
    msg.send 'https://scrutinizer-ci.com/dashboard/repositories'

  robot.respond /test/, (msg) ->
    Google.auth(process.env.GORDON_CLIENT_ID, process.env.GORDON_PROJECT_ID, process.env.GORDON_CLIENT_SECRET, [process.env.HUBOT_HEROKU_KEEPALIVE_URL], [process.env.HUBOT_HEROKU_KEEPALIVE_URL])

    # headers = {
    #   'Content-Type':'application/json'
    # }
    #
    # options = {
    #   url: 'https://script.googleapis.com/v1/scripts/' + process.env.GORDON_API_KEY + ':run',
    #   method: 'POST',
    #   headers: headers,
    #   json: true,
    #   form: {
    #     'function': 'getLastRow',
    #     'parameters': [],
    #     'devMode': true
    #   }
    # }
    #
    # request options, (error, response, body) ->
    #   msg.send response
