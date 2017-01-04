# Description:
#   Hubotがデプロイの様々な事をやってくれます。
#
# Commands:
#   hubot Deploy {env} {repo} - env環境に向けてデプロイしてくれます
jenkinsUrl = (repo) ->
  protocol = "https"
  hostName = "hapitas.jp"
  port = 54435
  if (repo == "apollo")
    subDomain = "ci03"
  else
    subDomain = "ci02"
  protocol + "://" + subDomain + "." + hostName + ":" + port

repositoryName = (repo) ->
  repo.charAt(0).toUpperCase() + repo.slice(1)

environments = {
                 dev  : "Demo"
                 stage: "Staging"
                 prod : "Production"
               }

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

    jobName = repositoryName(repo) + "-" + environments[env] + "-Deploy"
    if (repo != "woodstock" || env != "dev")
      jobName += "-Cap"

    msg.send jenkinsUrl(repo) + "/job/" + jobName + "/"

  robot.respond /(U|u)nit(T| t)est (.*)/i, (msg) ->
    repo = msg.match[3]

    availableRepo = ['apollo']
    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send jenkinsUrl(repo) + "/job/" + repositoryName(repo) + "-UnitTest/"

  robot.respond /(E2E|e2e)(T| t)est (.*)/i, (msg) ->
    repo = msg.match[3]

    availableRepo = ['apollo']
    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send jenkinsUrl(repo) + "/job/" + repositoryName(repo) + "-E2E-Test/"
