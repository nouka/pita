# Description:
#   GitHub Webhookのエンドポイント
#
# Notes:
#   Pull Request, Issueが対象
crypto = require 'crypto'

module.exports = (robot) ->
  getHipChatRoomId = (name) ->
    hipchatID = process.env.HUBOT_HIPCHAT_JID
    hipchatID.substr(0, 6) + '_' + name + '@conf.hipchat.com'

  robot.router.post "/github/webhook", (req, res) ->
    event_type = req.get 'X-Github-Event'
    signature = req.get 'X-Hub-Signature'

    unless isCorrectSignature signature, req.body
      res.status(401).send 'unauthorized'
      return

    message = switch event_type
      when 'issues'
        messageForIssues req.body
      when 'pull_request'
        messageForPullRequest req.body

    if message?
      robot.send {room: getHipChatRoomId('bot_test')}, message
      res.status(201).send 'created'
    else
      res.status(200).send 'ok'

    isCorrectSignature = (signature, body) ->
      pairs = signature.split '='
      digest_method = pairs[0]
      hmac = crypto.createHmac digest_method, process.env.HUBOT_GITHUB_SECRET
      hmac.update JSON.stringify(body), 'utf-8'
      hashed_data = hmac.digest 'hex'
      generated_signature = [digest_method, hashed_data].join '='

      return signature is generated_signature

    messageForPullRequest = (json) ->
      action = json.action
      pr = json.pull_request

      switch action
        when 'opened'
          "#{pr.user.login}さんからPull Requestをもらいました #{pr.title} #{pr.html_url}"
        when 'closed'
          if pr.merged
            "#{pr.user.login}さんのPull Requestをマージしました #{pr.title} #{pr.html_url}"

    messageForIssues = (json) ->
      action = json.action
      issue = json.issue

      switch action
        when 'opened'
          "#{issue.user.login}さんがIssueを上げました #{issue.title} #{issue.html_url}"
        when 'closed'
          "#{issue.user.login}さんのIssueがcloseされました #{issue.title} #{issue.html_url}"
