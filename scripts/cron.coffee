# Description:
#   定期実行
#
# Commands:
#   None
cronJob = require('cron').CronJob
hipchat = require('./hipchat.coffee')

module.exports = (robot) ->
  # ブランチの最新化を促す
  new cronJob('0 0 11 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('to_c_business')
    message = "@here エンジニア・デザイナーのみなさん、\n"
    message += "フィーチャーブランチをメインブランチ（releaseなど）と同期してから作業開始しましょう。\n"
    message += "競合が起きた場合は、近くのエンジニアに相談してください。\n"
    message += "＜メインブランチとの同期方法＞\n"
    message += "HipChatで以下のコマンドをpitaにコメントしてください。\n"
    message += "open pr oz-sysb/[リポジトリ] release->[フィーチャーブランチ]\n"
    message += "コンソールやGitHub for Windowsで以下の処理を実行してください。\n"
    message += "git fetch\n"
    message += "git checkout [フィーチャーブランチ]\n"
    message += "git pull\n"
    robot.send user, message
  ).start()

  # Wantedlyに応援を促す
  new cronJob('0 30 10,17 * * 1-5', () ->
    user = room: hipchat.getHipChatRoomId('【all】全員集合')
    message = "@all 応援よろしくお願いします！\n"
    message += "https://www.wantedly.com/companies/ozvisionrecruit/projects"
    robot.send user, message
  ).start()
