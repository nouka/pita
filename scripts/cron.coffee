# Description:
#   定期実行
#
# Commands:
#   None
cronJob = require('cron').CronJob

module.exports = (robot) ->
  getHipChatRoomId = (name) ->
    hipchatID = process.env.HUBOT_HIPCHAT_JID
    hipchatID.substr(0, 6) + '_' + name + '@conf.hipchat.com'

  new cronJob('0 10 11 * * 1-5', () ->
    user = room: getHipChatRoomId('bot_test')
    message = "cronだよ"
    robot.send user, message
  ).start()
