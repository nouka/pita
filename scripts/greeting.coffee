# Description:
#   挨拶と勤怠管理
#
# Commands:
#   hubot おはよう - 出勤時間と勤怠管理ツールのリンクを返す
#   hubot お疲れ様 - 退勤時間と勤怠管理ツールのリンクを返す
#   hubot 休憩入 - 休憩入り時間と勤怠管理ツールのリンクを返す
#   hubot 休憩戻 - 休憩戻り時間と勤怠管理ツールのリンクを返す

cronJob = require('cron').CronJob
hipchat = require('./hipchat.coffee')
request = require 'request'

module.exports = (robot) ->
  kintaUrl = "http://www3.kinta.ne.jp/kinta2/tr/"
  getTime = ->
    date = new Date()
    return date.getHours() + ":" + date.getMinutes()

  robot.respond /(おはよ|お早う|good morning)/i, (msg) ->
    message = msg.message.user.name + "さんの出勤時間 " + getTime() + "\n"
    message += "#{kintaUrl}"
    msg.reply message

  robot.respond /((お疲れ|おつかれ)(さま|様)|オツカレ)/, (msg) ->
    message = msg.message.user.name + "さんの退勤時間 " + getTime() + "\n"
    message += "#{kintaUrl}"
    msg.reply message

  robot.respond /休憩入/, (msg) ->
    message = msg.message.user.name + "さんの休憩時間 " + getTime() + "\n"
    message += "#{kintaUrl}"
    msg.reply message

  robot.respond /休憩戻/, (msg) ->
    message = msg.message.user.name + "さんの戻り時間 " + getTime() + "\n"
    message += "#{kintaUrl}"
    msg.reply message

  robot.respond /test/, (msg) ->
    calendarName = "japanese__ja@holiday.calendar.google.com"
    limit = 100
    startDate = "2017-08-01T00:00:00Z"
    endDate = "2017-08-31T23:59:59Z"
    url = "https://www.googleapis.com/calendar/v3/calendars/#{calendarName}/events?key=#{process.env.GOOGLE_CALENDAR_API_KEY}&timeMin=#{startDate}&timeMax=#{endDate}&maxResults=#{limit}&orderBy=startTime&singleEvents=true"
    request.get url, (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send "Googleカレンダーのデータ取得に失敗しました。"
      data = JSON.parse body
      data.items.forEach((row) ->
        console.log(row)
      )

    msg.send "test"

  new cronJob('0 55 9,19 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('【all】全員集合')
    message = "@here 皆さん勤太くんに打刻しましたか？\n"
    message += "#{kintaUrl}"
    robot.send user, message
  ).start()
