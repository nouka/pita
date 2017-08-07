# Description:
#   ソースコードの静的解析に関するリンクを返す
#
# Commands:
#   hubot scrutinizer list - 全リポジトリの静的解析の結果を表示する
#   hubot scrutinizer stats <repo> - <repo>の静的解析結果の統計を表示する
#   hubot scrutinizer reports <repo> - <repo>の静的解析結果の週次レポートを表示する
#   hubot scrutinizer issues <repo> - <repo>のバグリストを表示する
#   hubot scrutinizer code <repo> - <repo>の静的解析の結果を表示する
#   hubot scrutinizer coverage <repo> - <repo>のテストカバレッジレポートを表示する

module.exports = (robot) ->
  scrutinizerCiUrl = 'https://scrutinizer-ci.com'
  robot.respond /scrutinizer list/i, (msg) ->
    msg.send "#{scrutinizerCiUrl}/dashboard/repositories"

  robot.respond /scrutinizer stats (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "#{scrutinizerCiUrl}/g/oz-sysb/#{repo}/statistics/"

  robot.respond /scrutinizer reports (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "#{scrutinizerCiUrl}/g/oz-sysb/#{repo}/reports/"

  robot.respond /scrutinizer issues (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "#{scrutinizerCiUrl}/g/oz-sysb/#{repo}/issues/release"

  robot.respond /scrutinizer code (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "#{scrutinizerCiUrl}/g/oz-sysb/#{repo}/code-structure/release"

  robot.respond /scrutinizer coverage (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "#{scrutinizerCiUrl}/g/oz-sysb/#{repo}/code-structure/release/code-coverage"
