# Description:
#   HubotがGITの様々な事をやってくれます。
#
# Commands:
#   hubot Open PR {repo} {topic}->{master} - PRを作成してくれます

module.exports = (robot) ->

  robot.respond /^(O|o)pen (PR|pr) (.*) (.*)\-\>(.*)/i, (msg) ->
    repo = msg.match[3]
    from = msg.match[4]
    to   = msg.match[5]
    msg.send "https://github.com/#{repo}/compare/#{to}...#{from}?expand=1"

  robot.respond /^(PR|pr) (.*)\#(.*)/i, (msg) ->
    repo = msg.match[2]
    id   = msg.match[3]
    msg.send "https://github.com/#{repo}/pull/#{id}"

  robot.respond /^(I|issue) (.*)\#(.*)/i, (msg) ->
    repo = msg.match[2]
    id   = msg.match[3]
    mag.send "https://github.com/#{repo}/issues/#{id}"

  robot.respond /^(O|o)pen (I|i)ssue (.*)/i, (msg) ->
    repo = msg.match[3]
    msg.send "https://github.com/{repo}/issues/new"
