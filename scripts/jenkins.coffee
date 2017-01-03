# Description:
#   Hubotがデプロイの様々な事をやってくれます。
#
# Commands:
#   hubot Deploy {env} {repo} - env環境に向けてデプロイしてくれます
module.exports = (robot) ->

  robot.respond /(D|d)eploy (.*) (.*)/i, (msg) ->
    env  = msg.match[2]
    repo = msg.match[3]

    msg.send ""