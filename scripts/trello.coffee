# Description
#   Trelloとの連携
#
# Configuration:
#   HUBOT_TRELLO_KEY, HUBOT_TRELLO_TOKEN
#
# Commands:
#   trello add #{listName} #{title} - #{listName}に#{title}カードを追加する
#
Trello = require('node-trello')

module.exports = (robot) ->
  trello = new Trello(
    process.env.HUBOT_TRELLO_KEY,
    process.env.HUBOT_TRELLO_TOKEN
  )

  robot.respond /trello add (.*) (.*)/, (msg) ->
    boardName = "To C business 開発タスクボード"
    listName = msg.match[1]
    title = "#{msg.match[2]}"
    trello.get "/1/members/me/boards", {"fields": ["name"]}, (err, data) ->
      if err
        console.log(err)
        return
      for board in data
        if (board.name == boardName)
          trello.get "/1/boards/#{board.id}/lists", {"fields": ["name"]}, (err, data) ->
            if err
              console.log(err)
              return
            for list in data
              if (list.name == listName)
                trello.post "/1/cards", {name: title, idList: list.id}, (err, data) ->
                  if err
                    console.log(err)
                    msg.send "保存に失敗しました"
                    return
                  msg.send "「#{title}」をToDoに追加しました。"
