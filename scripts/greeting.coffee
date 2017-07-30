# Description:
#   Hubotが挨拶してくれます。
#
# Commands:
#   hubot おはよう - おはようと返してくれます
#   hubot お疲れ様 - お疲れ様と返してくれます
cronJob = require('cron').CronJob
hipchat = require('./hipchat.coffee')

module.exports = (robot) ->
  kintaUrl = "http://www3.kinta.ne.jp/kinta2/tr/"

  robot.respond /(おはよ|お早う|good morning)/i, (msg) ->
    date = new Date()
    message = msg.message.user.name + "さんの出勤時間 " + date.getHours() + ":" + date.getMinutes() + "\n"
    message += "#{kintaUrl}"
    msg.reply message

  robot.respond /((お疲れ|おつかれ)(さま|様)|オツカレ)/, (msg) ->
    date = new Date()
    message = msg.message.user.name + "さんの退勤時間 " + date.getHours() + ":" + date.getMinutes() + "\n"
    message += "#{kintaUrl}"
    msg.reply message

  new cronJob('0 55 9,19 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('朝会')
    message = "@here 皆さん勤太くんに打刻しましたか？\n"
    message += "#{kintaUrl}"
    robot.send user, message
  ).start()
