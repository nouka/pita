# Description:
#   HubotがGITの様々な事をやってくれます。
#
# Commands:
#   hubot Open PR {repo} {topic}->{master} - PRを作成してくれます

module.exports = (robot) ->

  robot.respond /open pr (.*) (.*)->(.*)/, (msg) ->
    repo = res.match[1]
    from = res.match[2]
    to   = res.match[3]
    res.send "https://github.com/oz-sysb/#{repo}/compare/#{to}...#{from}?expand=1"
