module.exports = (robot) ->

    robot.respond /.*(おはよう|お早う|good morning).*/i, (msg) ->
        msg.send msg.random ['おはようございます。', '今日もいい天気ですね。', 'お疲れ様です。']
        console.log(msg)

    robot.respond /.*(お疲れさま|おつかれさま|お疲れ様|bye).*/i, (msg) ->
        msg.send msg.random ['お疲れ様でした。', 'また明日。', 'お気をつけて。']
