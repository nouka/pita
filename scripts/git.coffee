# Description:
#   HubotがGITの様々な事をやってくれます。
#
# Commands:
#   hubot Open PR {repo} {topic}->{master} - PRを作成してくれます

module.exports = (robot) ->

  robot.respond /(O|o)pen (PR|pr) (.*?) (.*?)\-\>(.*?)/i, (msg) ->
    repo = msg.match[3]
    from = msg.match[4]
    to   = msg.match[5]
    msg.send "https://github.com/oz-sysb/#{repo}/compare/#{to}...#{from}?expand=1"

  robot.respond /(PR|pr) (.*?)\#(.*?)/i, (msg) ->
    repo = msg.match[2]
    id   = msg.match[3]
    msg.send "https://github.com/oz-sysb/#{repo}/pull/#{id}"

