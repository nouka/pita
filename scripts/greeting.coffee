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

  robot.respond /.*(お疲れさま|おつかれさま|お疲れ様|bye).*/, (msg) ->
    date = new Date()
    msg.send 'お疲れ様でした、' + msg.message.user.name + 'さん。\n退勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。'

  robot.respond /.*(おやすみ|またね).*/, (msg) ->
    msg.send 'おやすみなさい。また明日。'

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
