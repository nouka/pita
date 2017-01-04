# Description:
#   Hubotがデプロイの様々な事をやってくれます。
#
# Commands:
#   hubot Deploy {env} {repo} - env環境に向けてデプロイしてくれます
module.exports = (robot) ->

  robot.respond /(D|d)eploy (.*) (.*)/i, (msg) ->
    env  = msg.match[2]
    repo = msg.match[3]

    availableEnv = ['dev', 'stage', 'prod']
    if (availableEnv.indexOf(env) < 0)
        msg.send "環境名が違います。"

    availableRepo = ['woodstock', 'spitz', 'apollo', 'iron']
    if (availableRepo.indexOf(repo) < 0)
        msg.send "指定されたリポジトリは対応していません。"

    msg.send ""