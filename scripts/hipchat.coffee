exports.getHipChatRoomId = (name) ->
  hipchatID = process.env.HUBOT_HIPCHAT_JID
  hipchatID.substr(0, 6) + '_' + name + '@conf.hipchat.com'
