module.exports = (robot) ->

    robot.respond /.*(おはよう|お早う|good morning).*/i, (msg) ->
        msg.send msg.random ['おはようございます' + msg.message.user.name + '。', '今日もいい天気ですね。', 'ねむいです。。。']
        console.log(msg.message)

    robot.respond /.*(お疲れさま|おつかれさま|お疲れ様|bye).*/i, (msg) ->
        msg.send msg.random ['お疲れ様でした。', 'また明日。', '気をつけてお帰りください。']
