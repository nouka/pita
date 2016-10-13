module.exports = (robot) ->

    robot.respond /.*(おはよう|お早う|good morning).*/, (msg) ->
        msg.send msg.random ['おはようございます。', '今日もいい天気ですね。', 'お疲れ様です。']
