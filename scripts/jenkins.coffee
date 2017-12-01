# Description:
#   デプロイに関する様々なリンクを生成して返す
#
# Commands:
#   hubot deploy <env> <repo> - <env>環境に向けて<repo>をデプロイするリンクを生成して返す
#   hubot unit test <repo> - UnitTestを実行するジョブのリンクを生成して返す（apolloのみ対応）
#   hubot e2e test <repo> - E2ETestを実行するジョブのリンクを生成して返す（apolloのみ対応）

ci = require('./ci-tools.coffee')

repositoryName = (repo) ->
  repo.charAt(0).toUpperCase() + repo.slice(1)

environments = {
                 dev  : "Demo"
                 stage: "Staging"
                 prod : "Production"
               }

module.exports = (robot) ->

  robot.respond /deploy (.*) (.*)/i, (msg) ->
    env  = msg.match[1]
    repo = msg.match[2]

    availableEnv = ['dev', 'stage', 'prod']
    if (availableEnv.indexOf(env) < 0)
      return msg.send("環境名が違います。")

    availableRepo = ['woodstock', 'spitz', 'apollo', 'iron', 'react']
    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定されたリポジトリは対応していません。")

    jobName = repositoryName(repo) + "-" + environments[env] + "-Deploy"
    if (repo != "woodstock" || env != "dev")
      jobName += "-Cap"
    if (repo == "react")
      jobName = "Spitz-Demo-Deploy-Cap-2017-11-28"

    msg.send ci.jenkinsUrl(repo) + "/job/" + jobName + "/"

  robot.respond /unit test (.*)/i, (msg) ->
    repo = msg.match[1]

    availableRepo = ['apollo']
    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send ci.jenkinsUrl(repo) + "/job/" + repositoryName(repo) + "-UnitTest/"

  robot.respond /e2e test (.*)/i, (msg) ->
    repo = msg.match[1]

    availableRepo = ['apollo']
    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send ci.jenkinsUrl(repo) + "/job/" + repositoryName(repo) + "-E2E-Test/"
