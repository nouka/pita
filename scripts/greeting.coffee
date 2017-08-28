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
  kintaLoginUrl = "http://www3.kinta.ne.jp/kinta2/web/login.aspx"

  todayIsNBizDay = (n) ->
    dateFormat = 'YYYY-MM-DD'
    bizDay = moment(koyomi.addBiz(moment().format('YYYY-M-1'), workday)).format(dateFormat)
    today = moment().format(dateFormat)
    return (today == bizDay)

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

    if (todayIsNBizDay(workday))
      msg.send "true"
    else
      msg.send "false"

  new cronJob('0 55 9,18 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('【all】全員集合')
    message = "@here 皆さん勤太くんに打刻しましたか？\n"
    message += "#{kintaUrl}"
    robot.send user, message
  ).start()
