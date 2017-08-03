# Description
#   選択肢を与えて何かを選択する
#
# Commands:
#   choice <item1>、<item2>、<item3> - 選択肢からランダムに1つ選択して返す

module.exports = (robot) ->
  robot.respond /choice (.+)/i, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.reply "#{item}"
