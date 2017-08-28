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
koyomi = require 'koyomi'
moment = require 'moment'

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

  robot.respond /workday (.*)/, (msg) ->
    workday = msg.match[1]

    startDate = moment().format('YYYY-M-1')

    bizDay = moment(koyomi.addBiz(startDate, workday)).format('YYYY-MM-DD')

    msg.send bizDay

    # calendarName = "japanese__ja@holiday.calendar.google.com"
    # limit = 100
    #
    # startDate = new Date()
    # startDate.setDate(1)
    # startDate.setHours(0)
    # startDate.setMinutes(0)
    # startDate.setSeconds(0)
    # startDate.setMilliseconds(0)
    #
    # endDate = new Date()
    # endDate.setMonth(endDate.getMonth()+1)
    # endDate.setDate(0)
    # endDate.setHours(23)
    # endDate.setMinutes(59)
    # endDate.setSeconds(59)
    # endDate.setMilliseconds(999)
    #
    # url = "https://www.googleapis.com/calendar/v3/calendars/#{calendarName}/events?key=#{process.env.GOOGLE_CALENDAR_API_KEY}&timeMin=#{startDate.toJSON()}&timeMax=#{endDate.toJSON()}&maxResults=#{limit}&orderBy=startTime&singleEvents=true"
    # console.log(url)
    # request.get url, (error, response, body) ->
    #   if error or response.statusCode != 200
    #     return msg.send "Googleカレンダーのデータ取得に失敗しました。"
    #   data = JSON.parse body
    #   data.items.forEach((row) ->
    #     console.log(row)
    #   )
    #
    # msg.send "test"

  new cronJob('0 55 9,19 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('【all】全員集合')
    message = "@here 皆さん勤太くんに打刻しましたか？\n"
    message += "#{kintaUrl}"
    robot.send user, message
  ).start()
