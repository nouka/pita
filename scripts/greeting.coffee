# Description:
#   挨拶と勤怠管理
#
# Commands:
#   hubot おはよう - 出勤時間と勤怠管理ツールのリンクを返す
#   hubot お疲れ様 - 退勤時間と勤怠管理ツールのリンクを返す
#   hubot 休憩入 - 休憩入り時間と勤怠管理ツールのリンクを返す
#   hubot 休憩戻 - 休憩戻り時間と勤怠管理ツールのリンクを返す
#   hubot 名言 - 名言集から1つランダムにつぶやく

cronJob = require('cron').CronJob
koyomi = require 'koyomi'
moment = require 'moment'
maxim = require './maxim.json'

module.exports = (robot) ->
  kintaUrl = "http://www3.kinta.ne.jp/kinta2/tr/"
  kintaLoginUrl = "http://www3.kinta.ne.jp/kinta2/web/login.aspx"

  todayIsNBizDay = (n) ->
    dateFormat = 'YYYY-MM-DD'
    bizDay = moment(koyomi.addBiz(moment().format('YYYY-M-1'), n, true)).format(dateFormat)
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

  robot.respond /名言/i, (msg) ->
    item = msg.random maxim
    message = item.title + "\n"
    message += item.body + "\n"
    message += item.note
    msg.send message
