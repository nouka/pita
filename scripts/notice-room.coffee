# Description:
#   特定のルームに通知する
#
# Commands:
#   None
#
# URLS:
#   POST /api/notice?room=<room>&message=<message>

url = require 'url'
querystring = require 'querystring'

module.exports = (robot) ->
  robot.router.post "/api/notice", (req, res) ->
    query = querystring.parse (url.parse req.url).query
    res.end()

    return unless query.room

    user = room: query.room
    message = query.message or "未設定"

    try
      robot.send user, message
      console.log message
    catch error
      console.log "notifier error: #{error}. Request: #{req.body}"
