# Description
#   Trelloとの連携
#
# Configuration:
#   HUBOT_TRELLO_KEY, HUBOT_TRELLO_TOKEN
#
# Commands:
#   trello add #{listName} #{title} - #{listName}に#{title}カードを追加する
#   trello new sprint - Doneのリストをアーカイブし、空のDoneリストを用意する
#   daily scrum - 朝会用のコメントを取得する
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
    trello.get "/1/members/me/boards", {"fields": ["name"]}, (err, boards) ->
      if err
        console.log(err)
        return
      for board in boards
        if (board.name == boardName)
          trello.get "/1/boards/#{board.id}/lists", {"fields": ["name"]}, (err, lists) ->
            if err
              console.log(err)
              return
            for list in lists
              if (list.name == listName)
                trello.post "/1/cards", {name: title, idList: list.id}, (err, data) ->
                  if err
                    console.log(err)
                    msg.send "保存に失敗しました"
                    return
                  msg.send "「#{title}」をToDoに追加しました。"

  robot.respond /trello new sprint/, (msg) ->
    boardName = "ノーカのボード"
    trello.get "/1/members/me/boards", {"fields": ["name"]}, (err, boards) ->
      if err
        console.log(err)
        return
      for board in boards
        if (board.name == boardName)
          trello.get "/1/boards/#{board.id}/lists", {"fields": ["name"]}, (err, lists) ->
            if err
              console.log(err)
              return
            for list in lists
              if (list.name.match(/^Done/) != null)
                trello.put "/1/lists/#{list.id}/closed", {"value": true}, (err, data) ->
                if err
                  console.log(err)
                  return
            trello.post "/1/lists", {"name": "Done", "idBoard": board.id, "pos": "bottom"}, (err, data) ->
              if err
                console.log(err)
                return
              msg.send "次スプリントの準備ができました。"

  robot.respond /daily scrum/, (msg) ->
    boardName = "ノーカのボード"
    cardName = "日報（テンプレ）"
    trello.get "/1/members/me/boards", {"fields": ["name"]}, (err, boards) ->
      if err
        console.log(err)
        return
      for board in boards
        if (board.name == boardName)
          trello.get "/1/boards/#{board.id}/cards", {"fields": ["name"]}, (err, cards) ->
            if err
              console.log(err)
              return
            for card in cards
              if (card.name == cardName)
                trello.get "/1/cards/#{card.id}/desc", {}, (err, data) ->
                  if err
                    console.log(err)
                    msg.send "取得に失敗しました"
                    return
                  msg.send data._value
