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
    msg.send 'おはようございます、' + msg.message.user.name + 'さん。\n出勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。\nhttp://www3.kinta.ne.jp/kinta2/tr/'

  robot.respond /.*こんにち(は|わ).*/, (msg) ->
    msg.send 'こんにちは、' + msg.message.user.name + 'さん。'

  robot.respond /.*((お疲れ|おつかれ)(さま|様)|オツカレ).*/, (msg) ->
    date = new Date()
    msg.send 'お疲れ様でした、' + msg.message.user.name + 'さん。\n退勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。\nhttp://www3.kinta.ne.jp/kinta2/tr/'

  robot.respond /.*(おやすみ|またね).*/, (msg) ->
    msg.send 'おやすみなさい。また明日。'

  robot.respond /.*(ありがと|サンキュー|Thank).*/, (msg) ->
    msg.send 'いえいえ、どういたしまして。'

  robot.respond /.*(元気|げんき|ゲンキ).*？/, (msg) ->
    msg.send 'まあまあです。'

  robot.respond /.*(お腹|ハラ|腹)(すいた|減った|へった|ヘッタ).*/, (msg) ->
    msg.send 'ボクもヘッタ'



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
