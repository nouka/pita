# Description:
#   GitHub Webhookのエンドポイント
#
# Notes:
#   Pull Request, Issueが対象
crypto = require 'crypto'
hipchat = require('./hipchat.coffee')

module.exports = (robot) ->
  isValidSign = (sign, body) ->
    secret = process.env.HUBOT_GITHUB_SECRET
    hmac = crypto.createHmac 'sha1', secret
    hmac.update JSON.stringify(body), 'utf-8'
    hash = hmac.digest 'hex'
    generated_signature = "sha1=#{hash}"

  messageForPullRequest = (json) ->
    action = json.action
    pr = json.pull_request

    switch action
      when 'opened'
        "@all #{pr.user.login}さんからPull Requestをもらいました\n#{pr.title}\n#{pr.html_url}"
      when 'closed'
        if pr.merged
          "@all #{pr.user.login}さんのPull Requestをマージしました\n#{pr.title}\n#{pr.html_url}"

  messageForIssues = (json) ->
    action = json.action
    issue = json.issue

    switch action
      when 'opened'
        "@all #{issue.user.login}さんがIssueを上げました\n#{issue.title}\n#{issue.html_url}"
      when 'closed'
        "@all #{issue.user.login}さんのIssueがcloseされました\n#{issue.title}\n#{issue.html_url}"

  robot.router.post "/github/webhook", (req, res) ->
    event_type = req.get 'X-Github-Event'
    signature = req.get 'X-Hub-Signature'

    unless isValidSign signature, req.body
      res.status(401).send 'unauthorized'
      return

    message = switch event_type
      when 'issues'
        messageForIssues req.body
      when 'pull_request'
        messageForPullRequest req.body

    if message?
      robot.send {room: hipchat.getHipChatRoomId('to_c_business')}, message
      res.status(201).send 'created'
    else
      res.status(200).send 'ok'
