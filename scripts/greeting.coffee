# Description:
#   Hubotが挨拶してくれます。
#
# Commands:
#   hubot おはよう - おはようと返してくれます
#   hubot お疲れ様 - お疲れ様と返してくれます

module.exports = (robot) ->

  robot.respond /.*(おはよ|お早う|good morning).*/, (msg) ->
    date = new Date()
    msg.reply 'おはようございます、' + msg.message.user.name + 'さん。\n出勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。\nhttp://www3.kinta.ne.jp/kinta2/tr/'

  robot.respond /.*こんにち(は|わ).*/, (msg) ->
    msg.reply 'こんにちは、' + msg.message.user.name + 'さん。'

  robot.respond /.*((お疲れ|おつかれ)(さま|様)|オツカレ).*/, (msg) ->
    date = new Date()
    msg.reply 'お疲れ様でした、' + msg.message.user.name + 'さん。\n退勤時間は' + date.getHours() + ':' + date.getMinutes() + 'です。\nhttp://www3.kinta.ne.jp/kinta2/tr/'

  robot.respond /.*(おやすみ|またね).*/, (msg) ->
    msg.reply 'おやすみなさい。また明日。'

  robot.respond /.*(ありがと|サンキュー|Thank).*/, (msg) ->
    msg.reply 'いえいえ、どういたしまして。'

  robot.respond /.*おかえり.*/, (msg) ->
    msg.reply 'ただいまです。'

  robot.respond /.*(元気|げんき|ゲンキ).*？/, (msg) ->
    msg.reply 'まあまあです。'

  robot.respond /.*(お腹|ハラ|はら|腹)(すいた|減った|へった|ヘッタ).*/, (msg) ->
    msg.reply 'ボクもヘッタ'

  robot.respond /.*(なん|何)だと(思|おも)(う|いますか)？/, (msg) ->
    msg.reply 'さあね？'

  robot.respond /(.*)さんに、おめでとう言って.*/, (msg) ->
    name = msg.match[1]
    msg.send "#{name}さん、おめでとうございます！"

  robot.respond /.*やった(よ！|ー).*/, (msg) ->
    msg.reply 'やりましたね！'
