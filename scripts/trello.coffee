# Description
#   Trelloとの連携
#
# Configuration:
#   HUBOT_TRELLO_KEY, HUBOT_TRELLO_TOKEN
#
# Commands:
#
Trello = require('node-trello')

module.exports = (robot) ->
  trello = new Trello(
    process.env.HUBOT_TRELLO_KEY,
    process.env.HUBOT_TRELLO_TOKEN
  )

  findBoardByName = (name) ->
    trello.get "/1/members/me/boards", {'fields': 'name'}, (err, data) ->
      if err
        return err
      for board in data
        if (board.name == name)
          return board.id

  findListByName = (boardId, name) ->
    trello.get "/1/boards/#{boardId}/lists", {'fields': 'name'}, (err, data) ->
      if err
        return err
      for list in data
        if (list.name == name)
          return list.id

  robot.respond /trello add todo (.*)/, (msg) ->
    title = "#{msg.match[1]}"
    boardId = findBoardByName('ノーカのボード')
    listId = findListByName(boardId, 'ToDo')
    trello.post "/1/cards", {name: title, idList: listId}, (err, data) ->
      if err
        console.log(err)
        msg.send "保存に失敗しました"
        return
      msg.send "「#{title}」 をTrelloのToDoボードに保存しました"
