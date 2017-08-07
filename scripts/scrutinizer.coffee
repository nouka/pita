# Description:
#   ソースコードの静的解析に関するリンクを返す
#
# Commands:
#   hubot scrutinizer list - 全リポジトリの静的解析の結果を表示する
#   hubot scrutinizer stats <repo> - <repo>の静的解析結果の統計を表示する
#   hubot scrutinizer reports <repo> - <repo>の静的解析結果の週次レポートを表示する
#   hubot scrutinizer issues <repo> - <repo>のバグリストを表示する
#   hubot scrutinizer code <repo> - <repo>の静的解析の結果を表示する
#   hubot coverage <repo> - <repo>のテストカバレッジレポートを表示する

ci = require('./ci-tools.coffee')

module.exports = (robot) ->
  availableRepo = ['spitz', 'woodstock', 'mango', 'ameba', 'aslan-batch', 'apollo', 'panda']

  robot.respond /scrutinizer list/i, (msg) ->
    msg.send "#{ci.scrutinizerCiUrl()}/dashboard/repositories"

  robot.respond /scrutinizer stats (.*)/i, (msg) ->
    repo = msg.match[1]

    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send "#{ci.scrutinizerCiUrl(repo)}/statistics/"

  robot.respond /scrutinizer reports (.*)/i, (msg) ->
    repo = msg.match[1]

    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send "#{ci.scrutinizerCiUrl(repo)}/reports/"

  robot.respond /scrutinizer issues (.*)/i, (msg) ->
    repo = msg.match[1]

    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send "#{ci.scrutinizerCiUrl(repo)}/issues/release"

  robot.respond /scrutinizer code (.*)/i, (msg) ->
    repo = msg.match[1]

    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    msg.send "#{ci.scrutinizerCiUrl(repo)}/code-structure/release"

  robot.respond /coverage (.*)/i, (msg) ->
    repo = msg.match[1]

    if (availableRepo.indexOf(repo) < 0)
      return msg.send("指定したリポジトリは対応していません。")

    if (repo == 'apollo')
      return msg.send "#{ci.jenkinsUrl(repo)}/job/Apollo-UnitTest/cloverphp/";

    msg.send "#{ci.scrutinizerCiUrl(repo)}/code-structure/release/code-coverage"
