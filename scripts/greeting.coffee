module.exports = (robot) ->

    robot.respond /.*(おはよう|お早う|good morning).*/, (msg) ->
        msg.send 'おはようございます、' + msg.message.user.name + 'さん。'

    robot.respond /.*(お疲れさま|おつかれさま|お疲れ様|bye).*/, (msg) ->
        msg.send 'お疲れ様でした、' + msg.message.user.name + 'さん。'
