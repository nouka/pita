# Description:
#   Googleスプレッドシートの値が変更されたことを通知する
#
# Commands:
#   None
#
# URLS:
#   POST /hubot/google-spreadsheet?room=<room>&name=<name>&value=<value>

url = require 'url'
querystring = require 'querystring'

module.exports = (robot) ->
  robot.router.post "/hubot/google-spreadsheet", (req, res) ->
    query = querystring.parse (url.parse req.url).query
    res.end()

    return unless query.room

    user = room: query.room
    name = query.name or "未設定"
    value = query.value or "未設定"

    try
      message = "【#{name}】の値が#{value}に変更されました。"
      robot.send user, message
      console.log message
    catch error
      console.log "google spreadsheet notifier error: #{error}. Request: #{req.body}"
