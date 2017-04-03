# Description:
#   HubotがGITの様々な事をやってくれます。
#
# Commands:
#   hubot Open PR {repo} {topic}->{master} - PRを作成してくれます

module.exports = (robot) ->

  robot.respond /open pr (.*) (.*)\-\>(.*)/i, (msg) ->
    repo = msg.match[1]
    from = msg.match[2]
    to   = msg.match[3]
    msg.send "https://github.com/#{repo}/compare/#{to}...#{from}?expand=1"

  robot.respond /pr (.*)\#(.*)/i, (msg) ->
    repo = msg.match[1]
    id   = msg.match[2]
    msg.send "https://github.com/#{repo}/pull/#{id}"

  robot.respond /issue (.*)\#(.*)/i, (msg) ->
    repo = msg.match[1]
    id   = msg.match[2]
    mag.send "https://github.com/#{repo}/issues/#{id}"

  robot.respond /open issue (.*)/i, (msg) ->
    repo = msg.match[1]
    msg.send "https://github.com/{repo}/issues/new"
