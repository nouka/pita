# Description:
#   Hubotが挨拶してくれます。
#
# Commands:
#   hubot おはよう - おはようと返してくれます
#   hubot お疲れ様 - お疲れ様と返してくれます

module.exports = (robot) ->

  robot.respond /(おはよ|お早う|good morning)/i, (msg) ->
    date = new Date()
    msg.reply msg.message.user.name + 'さんの出勤時間 ' + date.getHours() + ':' + date.getMinutes() + '\nhttp://www3.kinta.ne.jp/kinta2/tr/'

  robot.respond /((お疲れ|おつかれ)(さま|様)|オツカレ)/, (msg) ->
    date = new Date()
    msg.reply msg.message.user.name + 'さんの退勤時間 ' + date.getHours() + ':' + date.getMinutes() + '\nhttp://www3.kinta.ne.jp/kinta2/tr/'
