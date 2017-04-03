# Description
#   A Hubot script for choosing at random
#
# Configuration:
#   None
#
# Commands:
#   choice <item1>、<item2>、<item3> - choose at random
#
# Author:
#   bouzuya <m@bouzuya.net>

module.exports = (robot) ->
  robot.respond /choice (.+)/i, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.reply "#{item}"
