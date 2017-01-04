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
      return msg.send("環境名が違います。")

    availableRepo = ['woodstock', 'spitz', 'apollo', 'iron']
    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定されたリポジトリは対応していません。")

    protocol = "https"
    hostName = "hapitas.jp"
    port = 54435

    if (repo == "apollo")
      subDomain = "ci03"
    else
      subDomain = "ci02"

    repositoryName = repo.charAt(0).toUpperCase() + repo.slice(1)
    environment = {
                     "dev"  : "Demo",
                     "stage": "Staging",
                     "prod" : "Production"
                  }
    jobName = repositoryName + "-" + environment[env] + "-Deploy"
    if (repo != "woodstock" && env != "dev")
      jobName += "-Cap"

    url = protocol + "://" + subDomain + "." + hostName + ":" + port + "/job/" + jobName + "/"

    msg.send url
