# Description:
#   HubotがGITの様々な事をやってくれます。
#
# Commands:
#   hubot Open PR {repo} {topic}->{master} - PRを作成してくれます

module.exports = (robot) ->

  robot.respond /open pr (.*?) (.*?)->(.*?)/, (msg) ->
    repo = msg.match[1]
    from = msg.match[2]
    to   = msg.match[3]
    msg.send 'https://github.com/oz-sysb/#{repo}/compare/#{to}...#{from}?expand=1'
