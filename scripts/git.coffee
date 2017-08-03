# Description:
#   GitHubの様々なリンクを生成して返す
#
# Commands:
#   hubot pr <repo>#<id> - PullRequestのリンクを生成して返す
#   hubot open pr <repo> <topic>-><master> - PullRequestを作成するリンクを生成して返す
#   hubot issue <repo>#<id> - Issueのリンクを生成して返す
#   hubot open issue <repo> - Issueを作成するリンクを生成して返す

module.exports = (robot) ->

  robot.respond /pr (.*)\#(.*)/i, (msg) ->
    repo = msg.match[1]
    id   = msg.match[2]
    msg.send "https://github.com/#{repo}/pull/#{id}"

  robot.respond /open pr (.*) (.*)\-\>(.*)/i, (msg) ->
    repo = msg.match[1]
    from = msg.match[2]
    to   = msg.match[3]
    msg.send "https://github.com/#{repo}/compare/#{to}...#{from}?expand=1"

  robot.respond /issue (.*)\#(.*)/i, (msg) ->
    repo = msg.match[1]
    id   = msg.match[2]
    mag.send "https://github.com/#{repo}/issues/#{id}"

  robot.respond /open issue (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "https://github.com/{repo}/issues/new"
