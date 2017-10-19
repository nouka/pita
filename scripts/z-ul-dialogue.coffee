# Description
#   User Local dialogue API をコールする
#
# Configuration:
#   HUBOT_UL_API_KEY
#
# Commands:
#   hubot <message> - コマンドっぽい接頭辞以外で始まった文章に人工知能が返信する

module.exports = (robot) ->

  cmds = []
  for help in robot.helpCommands()
    cmd = help.split(' ')[1]
    cmds.push(cmd) if cmds.indexOf(cmd) is -1

  robot.respond /(.+)$/i, (res) ->
    cmd = res.match[1].split(' ')[0]
    console.log cmds
    console.log cmd
    console.log cmds.indexOf(cmd)
    unless cmds.indexOf(cmd) is -1
      return

    message = res.match[1]
    return if message is ''

    res
      .http('https://chatbot-api.userlocal.jp/api/chat')
      .headers('Content-Type': 'application/json')
      .post(JSON.stringify({ message: message, key: process.env.HUBOT_UL_API_KEY})) (err, response, body) ->
        if err?
          console.log "Encountered an error #{err}"
        else
          res.send JSON.parse(body).result
