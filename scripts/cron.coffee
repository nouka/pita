# Description:
#   定期実行
#
# Commands:
#   None
cronJob = require('cron').CronJob
hipchat = require('./hipchat.coffee')

module.exports = (robot) ->
 # Wantedlyに応援を促す
  new cronJob('0 30 10,17 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('【all】全員集合')
    message = "@all 応援よろしくお願いします！\n"
    message += "https://www.wantedly.com/companies/ozvisionrecruit/projects"
    robot.send user, message
  ).start()
